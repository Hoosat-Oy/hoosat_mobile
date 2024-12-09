import 'bip32/bip32.dart';

const String kHoosatNetworkMainnet = 'hoosat-mainnet';
const String kHoosatNetworkTestnet = 'hoosat-testnet';
const String kHoosatNetworkSimnet = 'hoosat-simnet';
const String kHoosatNetworkDevnet = 'hoosat-devnet';

const String kHoosatNetworkIdMainnet = '$kHoosatNetworkMainnet';
const String kHoosatNetworkIdTestnet = '$kHoosatNetworkTestnet';
const String kHoosatNetworkIdSimnet = '$kHoosatNetworkSimnet';
const String kHoosatNetworkIdDevnet = '$kHoosatNetworkDevnet';

const int kMainnetRpcPort = 42420;
const int kTestnetPpcPort = 42422;
const int kSimnetRpcPort = 42424;
const int kDevnetRpcPort = 42426;

enum HoosatNetwork {
  mainnet,
  testnet,
  devnet,
  simnet;

  static HoosatNetwork? tryParse(String network) {
    return switch (network) {
      kHoosatNetworkMainnet => HoosatNetwork.mainnet,
      kHoosatNetworkTestnet => HoosatNetwork.testnet,
      kHoosatNetworkSimnet => HoosatNetwork.simnet,
      kHoosatNetworkDevnet => HoosatNetwork.devnet,
      _ => null,
    };
  }

  String idWithSuffix([String suffix = '']) {
    if (suffix.isNotEmpty) {
      return name + '-$suffix';
    }
    return name;
  }

  int get defaultRpcPort => switch (this) {
        HoosatNetwork.mainnet => kMainnetRpcPort,
        HoosatNetwork.testnet => kTestnetPpcPort,
        HoosatNetwork.simnet => kSimnetRpcPort,
        HoosatNetwork.devnet => kDevnetRpcPort
      };
}

HoosatNetwork networkForPort(int port) {
  switch (port) {
    case kMainnetRpcPort:
      return HoosatNetwork.mainnet;
    case kTestnetPpcPort:
      return HoosatNetwork.testnet;
    case kSimnetRpcPort:
      return HoosatNetwork.simnet;
    case kDevnetRpcPort:
      return HoosatNetwork.devnet;
    default:
      return HoosatNetwork.mainnet;
  }
}

HoosatNetwork networkForKpub(String kpub) {
  return switch (kpub.substring(0, 4)) {
    'kpub' => HoosatNetwork.mainnet,
    'ktub' => HoosatNetwork.testnet,
    'ksub' => HoosatNetwork.simnet,
    'kdub' => HoosatNetwork.devnet,
    _ => HoosatNetwork.mainnet,
  };
}

NetworkType networkTypeForNetwork(HoosatNetwork network) {
  switch (network) {
    case HoosatNetwork.mainnet:
      return hoosatMainnet;
    case HoosatNetwork.testnet:
      return hoosatTestnet;
    case HoosatNetwork.devnet:
      return hoosatDevnet;
    case HoosatNetwork.simnet:
      return hoosatSimnet;
  }
}

final hoosatMainnet = NetworkType(
  messagePrefix: 'Hoosat Signed Message:\n',
  bech32: 'hoosat',
  bip32: Bip32Type(
    public: 0x038f332e,
    private: 0x038f2ef4,
  ),
  wif: 0x80,
  pubKeyHash: 0x00,
  scriptHash: 0x05,
  opreturnSize: 80,
);

final hoosatTestnet = NetworkType(
  messagePrefix: 'Hoosat Signed Message:\n',
  bech32: 'hoosattest',
  wif: 0xef,
  bip32: Bip32Type(
    public: 0x0390a241,
    private: 0x03909e07,
  ),
  pubKeyHash: 0x00,
  scriptHash: 0x05,
  opreturnSize: 80,
);

final hoosatSimnet = NetworkType(
  messagePrefix: 'Hoosat Signed Message:\n',
  bech32: 'hoosatsim',
  wif: 0x64,
  bip32: Bip32Type(
    public: 0x0390467d,
    private: 0x03904242,
  ),
  pubKeyHash: 0x00,
  scriptHash: 0x05,
  opreturnSize: 80,
);

final hoosatDevnet = NetworkType(
  messagePrefix: 'Hoosat Signed Message:\n',
  bech32: 'hoosatdev',
  wif: 0xef,
  bip32: Bip32Type(
    public: 0x038b41ba,
    private: 0x038b3d80,
  ),
  pubKeyHash: 0x00,
  scriptHash: 0x05,
  opreturnSize: 80,
);
