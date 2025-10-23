import 'package:decimal/decimal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/core_providers.dart';
import '../settings/settings_providers.dart';
import 'coingecko_price_notifier.dart';
import 'coingecko_repository.dart';
import 'coingecko_types.dart';

final _hoosatPriceCacheProvider =
    StateNotifierProvider<CoinGeckoPriceNotifier, CoinGeckoPrice>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  return CoinGeckoPriceNotifier(repository);
});

final _hoosatPriceRemoteProvider =
    FutureProvider.autoDispose<CoinGeckoPrice>((ref) async {
  ref.watch(remoteRefreshProvider);
  ref.watch(timeProvider);

  final currency = ref.watch(currencyProvider);
  final fiat = currency.name.toLowerCase();

  final log = ref.read(loggerProvider);
  final cached = ref.read(_hoosatPriceCacheProvider);

  // 60 seconds
  final maxCacheAge = 60 * 1000;
  final timestamp = DateTime.now().millisecondsSinceEpoch;
  if (cached.currency == currency.currency &&
      timestamp - cached.timestamp < maxCacheAge) {
    log.d('Using cached CoinGecko exchange rates');
    return cached;
  }

  try {
    var price = await getCoinPaprikaApiPrice(fiat);
    if (price == null) {
      price = await getHoosatApiPrice(fiat);
    }
    if (price == null) {
      price = await getCoinGeckoApiPrice(fiat);
    }
    if (price == null) {
      throw Exception('Failed to fetch remote exchange rate');
    }

    return CoinGeckoPrice(
      currency: currency.currency,
      price: Decimal.parse(price.toString()),
      timestamp: timestamp,
    );
  } catch (e, st) {
    log.e('Failed to fetch HTN exchange rate', error: e, stackTrace: st);
    if (cached.currency == currency.currency) {
      return cached;
    }
    return CoinGeckoPrice(
      currency: currency.currency,
      price: Decimal.zero,
      timestamp: timestamp,
    );
  }
});

final coingeckoHoosatPriceProvider = Provider.autoDispose((ref) {
  final cache = ref.watch(_hoosatPriceCacheProvider.notifier);
  final remote = ref.watch(_hoosatPriceRemoteProvider);

  remote.whenOrNull(data: (data) {
    Future.microtask(() => cache.updatePrice(data));
  });

  return remote.asData?.value ?? cache.price;
});
