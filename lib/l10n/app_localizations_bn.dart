// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get account => 'অ্যাকাউন্ট';

  @override
  String get accounts => 'অ্যাকাউন্টস';

  @override
  String get ackBackedUp =>
      'আপনি কি নিশ্চিত যে আপনি আপনার গোপন বাক্যাংশ বা সীড  ব্যাক আপ করেছেন?';

  @override
  String get add => 'যোগ করুন';

  @override
  String get addAccount => 'অ্যাকাউন্ট যোগ করুন';

  @override
  String get addContact => 'কন্টাক্ট সংরক্ষণ';

  @override
  String get addNode => 'নোড যোগ করুন';

  @override
  String get addNodeFailed => 'Hoosat নোড যোগ করা ব্যর্থ হয়েছে';

  @override
  String addNodeFailedMessage(String error) {
    return 'ব্যর্থ হয়েছে: $error';
  }

  @override
  String get addNodeSuccess => 'নোড সফলভাবে যোগ করা সম্পন্ন হয়েছে';

  @override
  String get addingNodeMessage =>
      'নোডের সাথে যোগাযোগ করার সময় অনুগ্রহ করে অপেক্ষা করুন';

  @override
  String get addingNodeTitle => 'নোড যোগ করা হচ্ছে';

  @override
  String get address => 'ঠিকানা';

  @override
  String get addressCopied => 'ঠিকানা কপি করা হয়েছে';

  @override
  String get addressCopiedFailed => 'ঠিকানা কপি করা ব্যর্থ হয়েছে';

  @override
  String get addressHint => 'ঠিকানা লিখুন';

  @override
  String get addressMising => 'দয়া করে ঠিকানা লিখুন';

  @override
  String get addressShare => 'ঠিকানা শেয়ার করুন';

  @override
  String get hoosatUriCopied => 'Hoosat URI Copied';

  @override
  String get hoosatUriCopyFailed => 'Failed to copy Hoosat URI';

  @override
  String get advancedHeader => 'উন্নত স্তরের';

  @override
  String get amount => 'রাশি';

  @override
  String amountConfirm(String amount, String coin) {
    return 'রাশি $amount $coin';
  }

  @override
  String get amountMissing => 'অনুগ্রহ করে রাশি লিখুন';

  @override
  String get amountZero => 'রাশি শূন্য হতে পারবে না';

  @override
  String get areYouSure => 'আপনি কি নিশ্চিত?';

  @override
  String get authBiometricMessage => 'ওয়ালেট যোগ করতে প্রমাণীকরণ করুন';

  @override
  String get authMethod => 'প্রমাণীকরণ পদ্ধতি';

  @override
  String get authPinMessage => 'ওয়ালেট যোগ করতে পিন লিখুন';

  @override
  String get autoLockHeader => 'স্বয়ংক্রিয়ভাবে লক';

  @override
  String get available => 'উপলব্ধ';

  @override
  String get backupConfirmButton => 'আমি এটা ব্যাকআপ করেছি';

  @override
  String get backupSecretPhrase => 'গোপন বাক্যাংশ ব্যাকআপ করুন';

  @override
  String get missingSecretPhrase => 'Missing Secret Phrase';

  @override
  String get biometricsMethod => 'বায়োমেট্রিক্স';

  @override
  String get blockExplorer => 'ব্লক এক্সপ্লোরার';

  @override
  String get cancel => 'বাতিল';

  @override
  String get change => 'পরিবর্তন';

  @override
  String get changeAddress => 'ঠিকানা পরিবর্তন করুন';

  @override
  String get changeAddressCopied => 'ঠিকানা পরিবর্তন কপি করা হয়েছে';

  @override
  String get changeIndex => 'ইনডেক্স পরিবর্তন করুন';

  @override
  String changeIndexParam(String addressIndex) {
    return 'পরিবর্তন করুন $addressIndex';
  }

  @override
  String get checkCameraPermission => 'ক্যামেরা এর অনুমতিদান পরীক্ষা করুন';

  @override
  String get clipboardEmpty => 'ক্লিপবোর্ড টি শূন্য ';

  @override
  String get close => 'বন্ধ করুন';

  @override
  String get confirm => 'নিশ্চিত করুন';

  @override
  String get confirmPasswordHint => 'পাসওয়ার্ড নিশ্চিত করুন';

  @override
  String confirmations(String confirmations) {
    return '$confirmations নিশ্চিতকরণ';
  }

  @override
  String get confirmed => 'নিশ্চিত';

  @override
  String get confirming => 'নিশ্চিত করা';

  @override
  String contactAdded(String contactName) {
    return '$contactName কন্টাক্ট সংরক্ষণ সফল';
  }

  @override
  String contactAddressCopied(String address) {
    return '$address ঠিকানা কপি করা হয়েছে';
  }

  @override
  String get contactExists => 'কন্টাক্ট আগে থেকেই আছে';

  @override
  String get contactHeader => 'কন্টাক্ট';

  @override
  String get contactInvalid => 'অবৈধ কন্টাক্ট এর নাম';

  @override
  String get contactNameHint => 'নাম লিখুন @';

  @override
  String get contactNameMissing => 'এই কন্টাক্ট এর জন্য একটি নাম চয়ন করুন';

  @override
  String contactRemoved(String contactName) {
    return '$contactName কন্টাক্ট থেকে মুছে ফেলা হয়েছে!';
  }

  @override
  String get contactsHeader => 'কন্টাক্ট গুলো';

  @override
  String get contactsImportErr => 'কন্টাক্ট গুলো আমদানি করতে ব্যর্থ হয়েছে';

  @override
  String contactsImportSuccess(String noContacts) {
    return 'কন্টাক্ট সফলভাবে আমদানি করা হয়েছে $noContacts';
  }

  @override
  String get copied => 'কপি করা হয়েছে';

  @override
  String get copy => 'কপি';

  @override
  String get copyAddress => 'ঠিকানা কপি করুন';

  @override
  String get copyErrorButton => 'কপি করতে ত্রুটি ';

  @override
  String get createAPasswordHeader => 'একটি পাসওয়ার্ড তৈরি করুন.';

  @override
  String get createPasswordFirstParagraph =>
      'আপনার ওয়ালেট এ অতিরিক্ত নিরাপত্তা যোগ করতে আপনি একটি পাসওয়ার্ড তৈরি করতে পারেন।';

  @override
  String get createPasswordHint => 'একটি পাসওয়ার্ড তৈরি করুন';

  @override
  String get createPasswordSecondParagraph =>
      'পাসওয়ার্ড হলো এক বিকল্প, এবং আপনার ওয়ালেট আপনার পিন বা বায়োমেট্রিক নির্বিশেষে সুরক্ষিত থাকবে।';

  @override
  String get createPasswordSheetHeader => 'তৈরি করুন';

  @override
  String get currency => 'কারেন্সি';

  @override
  String get currencyPoweredBy => 'CoinGecko দ্বারা চালিত';

  @override
  String get defaultAccountName => 'ঠিকানা 1';

  @override
  String defaultNewAccountName(int addressIndex) {
    return 'প্রাপ্ত হওয়া $addressIndex';
  }

  @override
  String get defaultWalletName => 'আমার ওয়ালেট';

  @override
  String get disablePasswordSheetHeader => 'নিষ্ক্রিয়';

  @override
  String get disablePasswordSuccess => 'পাসওয়ার্ড নিষ্ক্রিয় করা হয়েছে';

  @override
  String get disableWalletPassword => 'ওয়ালেট পাসওয়ার্ড নিষ্ক্রিয় করুন';

  @override
  String get doContinue => 'অব্যাহত';

  @override
  String get donate => 'দান করুন';

  @override
  String get donateTo => 'Donate To';

  @override
  String get dontShowAgain => 'পুনরায় দেখাবেন না';

  @override
  String get emptyCardIntroUtxos =>
      'এটি UTXOs ট্যাব। আপনার ওয়ালেটের সমস্ত UTXO এখানে পরিলক্ষিত হবে';

  @override
  String get emptyResult => 'ফলাফল শূন্য';

  @override
  String get emptyWalletName => 'ওয়ালেটের নাম খালি থাকতে পারবে না';

  @override
  String get encryptionFailedError =>
      'ওয়ালেট পাসওয়ার্ড সেট করা ব্যর্থ হয়েছে';

  @override
  String get enterAddress => 'ঠিকানা লিখুন';

  @override
  String get enterAmount => 'রাশি লিখুন';

  @override
  String get enterFiatValue => 'Enter Fiat Value';

  @override
  String get enterNote => 'নোট লিখুন';

  @override
  String get enterPasswordHint => 'আপনার পাসওয়ার্ড লিখুন';

  @override
  String get errorMessageCopied => 'ত্রুটি বার্তা ক্লিপবোর্ডে কপি করা হয়েছে';

  @override
  String get exampleCardIntro =>
      'এটা লেনদেন এর ট্যাব। একবার আপনি একটি লেনদেন প্রেরণ বা গ্রহণ করলে, এটি এখানে পরিলক্ষিত হবে৷';

  @override
  String get export => 'রপ্তানি';

  @override
  String get fee => 'ফি';

  @override
  String feeConfirm(String amount, String coin) {
    return 'ফি $amount $coin';
  }

  @override
  String get feeTitle => 'ফি';

  @override
  String get fetchingTransactions => 'লেনদেনের তথ্য আনা হচ্ছে';

  @override
  String get fingerprintSeedBackup => 'ব্যাকআপ সীড প্রমাণীকরণ করুন।';

  @override
  String get goBackButton => 'পেছনে যান';

  @override
  String get gotItButton => 'বুঝেছি!';

  @override
  String get import => 'আমদানি';

  @override
  String get importSecretPhrase => 'গোপন বাক্যাংশ আমদানি করুন';

  @override
  String get importSecretPhraseHint =>
      'নিচে আপনার 24 শব্দের গোপন বাক্যাংশ লিখুন.';

  @override
  String get importSecretPhraseHintCombo =>
      'নীচে আপনার 12 বা 24 শব্দের গোপন বাক্যাংশ লিখুন।';

  @override
  String get importSecretPhraseHintLegacy =>
      'নীচে আপনার 12 শব্দের গোপন বাক্যাংশ লিখুন।';

  @override
  String get importWallet => 'ওয়ালেট আমদানি করুন';

  @override
  String get importWalletDescription => 'নীচে থেকে একটি বিকল্প নির্বাচন করুন।';

  @override
  String get instantly => 'তৎক্ষণাত';

  @override
  String get insufficientBalance => 'অপর্যাপ্ত রাশি';

  @override
  String get insufficientBalanceDetails =>
      'এই লেনদেনের জন্য আপনার কাছে পর্যাপ্ত HTN নেই';

  @override
  String get invalidAddress => 'এই ঠিকানাটি অবৈধ';

  @override
  String get invalidAmount => 'অবৈধ রাশি';

  @override
  String get invalidChecksumMessage =>
      'আপনার গোপন বাক্যাংশ চেক করুন\nসঠিকভাবে প্রবেশ করানো হয়েছে!';

  @override
  String get invalidKpubMessage =>
      'আপনার বর্ধিত পাবলিক কী সঠিকভাবে প্রবেশ করানো হয়েছে কিনা তা পরীক্ষা করুন!';

  @override
  String get invalidDestinationAddress => 'গন্তব্যের ঠিকানা অবৈধ';

  @override
  String get invalidPassword => 'ভুল পাসওয়ার্ড';

  @override
  String get hoosatDevFund => 'কাসপা ডেভ তহবিল';

  @override
  String get hoosatMobile => 'কাস্পিয়াম ওয়ালেট';

  @override
  String get language => 'ভাষা';

  @override
  String get loadingTransactions => 'লেনদেন লোড হচ্ছে...';

  @override
  String get lockAppSetting => 'শুরু করতে প্রমাণীকরণ করুন';

  @override
  String get locked => 'লক করা হয়েছে';

  @override
  String get loggingOutMessage => 'লগ আউট হচ্ছে...';

  @override
  String get logout => 'লগ আউট';

  @override
  String get logoutDialogContent =>
      'আপনি কি এই ওয়ালেট থেকে লগআউট করার বিষয়ে নিশ্চিত?';

  @override
  String get logoutOrSwitchWallet => 'লগ আউট/ওয়ালেট পরিবর্তন করুন';

  @override
  String get manage => 'পরিচালনা করুন';

  @override
  String get manualEntry => 'ম্যানুয়াল এন্ট্রি';

  @override
  String get networkHeader => 'নেটওয়ার্ক';

  @override
  String get newAddress => 'নতুন ঠিকানা';

  @override
  String get newWallet => 'নুতন ওয়ালেট';

  @override
  String get nextButton => 'পরবর্তী';

  @override
  String get no => 'না';

  @override
  String get noContactsExport => 'এক্সপোর্ট করার জন্য কোন কন্টাক্ট নেই';

  @override
  String get noContactsImport => 'ইম্পোর্ট করার জন্য নতুন কোন কন্টাক্ট নেই';

  @override
  String get noQrCodeFound => 'কোনো QR কোড পাওয়া যায়নি';

  @override
  String get noSkipButton => 'না, এড়িয়ে যান';

  @override
  String get noUppercase => 'না';

  @override
  String get nodeAddress => 'কাসপা নোড';

  @override
  String get nodeDeleteMessage => 'আপনি কি নিশ্চিতভাবে ডিলিট করে ফেলতে চান?';

  @override
  String get nodeDeleteTitle => 'কাসপা নোড কনফিগারেশন ডিলিট করবেন?';

  @override
  String get nodeNameEmpty => 'নোডের নাম শূন্য হতে পারে না';

  @override
  String get nodeNameHint => 'নোডের নাম লিখুন';

  @override
  String get nodeUrlHint => 'নোড এর URL লিখুন';

  @override
  String get nodeUrlInvalid => 'অবৈধ নোড URL';

  @override
  String get nodesSheetTitle => 'কাসপা নোডস';

  @override
  String get off => 'বন্ধ';

  @override
  String get on => 'চালু';

  @override
  String get paperWallet => 'পেপার ওয়ালেট';

  @override
  String get passwordBlank => 'পাসওয়ার্ড খালি রাখা যাবে না';

  @override
  String get passwordNoLongerRequiredToOpenParagraph =>
      'এই ওয়ালেট খুলতে আপনার আর পাসওয়ার্ড লাগবে না।';

  @override
  String get passwordWillBeRequiredToOpenParagraph =>
      'ওয়ালেট খোলার জন্য এই পাসওয়ার্ডের প্রয়োজন হবে।';

  @override
  String get passwordsDontMatch => 'পাসওয়ার্ড মিলছে না';

  @override
  String get pasteMnemonicError =>
      'ক্লিপবোর্ড এর বিষয়বস্তু একটি বৈধ গোপন বাক্যাংশ নয়';

  @override
  String get pending => 'অনুমোদন অপেক্ষারত';

  @override
  String get pinConfirmError => 'পিন সঠিক হয় নি';

  @override
  String get pinConfirmTitle => 'আপনার পিন নিশ্চিত করুন';

  @override
  String get pinCreateTitle => 'একটি 6 অঙ্কের পিন তৈরি করুন';

  @override
  String get pinEnterTitle => 'পিন লিখুন';

  @override
  String get pinInvalid => 'অবৈধ পিন প্রবেশ করা হয়েছে';

  @override
  String get pinMethod => 'পিন';

  @override
  String get pinSeedBackup => 'গোপন সীড ব্যাকআপ করতে পিন লিখুন';

  @override
  String get preferences => 'পছন্দ';

  @override
  String get privacyPolicy => 'গোপনীয়তা নীতি';

  @override
  String get qrInvalidAddress => 'QR কোডে কোনো বৈধ ঠিকানা নেই';

  @override
  String get qrInvalidSeed => 'QR কোডে একটি বৈধ সিড বা ব্যক্তিগত কী নেই';

  @override
  String get qrMnemonicError => 'QR- এ একটি বৈধ গোপন বাক্যাংশ নেই';

  @override
  String get receive => 'গ্রহণ';

  @override
  String get receiveAddress => 'গ্রহণ করার ঠিকানা';

  @override
  String get receiveAddressCopied => 'গ্রহণ করার ঠিকানা কপি করা হয়েছে ';

  @override
  String get receiveIndex => 'ইনডেক্স গ্রহণ';

  @override
  String receiveIndexParam(String addressIndex) {
    return 'গ্রহণ $addressIndex';
  }

  @override
  String get received => 'গৃহীত';

  @override
  String get removeContact => 'কন্টাক্ট মুছে ফেলুন';

  @override
  String removeContactConfirmation(String contactName) {
    return 'আপনি কি নিশ্চিত যে আপনি $contactName মুছে ফেলতে চান?';
  }

  @override
  String get removeWalletAction => 'ওয়ালেট অপসারণ';

  @override
  String get removeWalletBiometricsMessage =>
      'ওয়ালেট অপসারণ করতে প্রমাণীকরণ করুন';

  @override
  String get removeWalletDetail =>
      'এই ওয়ালেটটি অপসারণ করা হলে এই ডিভাইস থেকে গোপন বাক্যাংশ এবং সমস্ত ওয়ালেট-সম্পর্কিত ডেটা মুছে যাবে৷ যদি গোপন বাক্যাংশ ব্যাক আপ না করা হয়, তাহলে আপনি আর কখনও আপনার তহবিল অ্যাক্সেস করতে পারবেন না।';

  @override
  String get removeWalletPinMessage => 'ওয়ালেট অপসরণ করতে পিন লিখুন';

  @override
  String get removeWalletReassurance =>
      'যেহেতু আপনি গোপন বাক্যাংশটি ব্যাক আপ করেছেন তাই আপনার উদ্বিগ্ন হওয়ার কিছু নেই।';

  @override
  String get requireAPasswordToOpenHeader =>
      'এই ওয়ালেট খুলতে একটি পাসওয়ার্ড প্রয়োজন?';

  @override
  String get restartSetupButton => 'সেটআপ পুনরায় চালু করুন';

  @override
  String get scanQrCode => 'QR কোড স্ক্যান করুন';

  @override
  String get scanQrCodeError => 'কিউআর কোড পার্স করতে ব্যর্থ হয়েছে';

  @override
  String get secretInfo =>
      'পরবর্তী পর্দায়, আপনি আপনার গোপন বাক্যাংশ দেখতে পাবেন। আপনার তহবিল অ্যাক্সেস করার জন্য এটি একটি পাসওয়ার্ড। এটি গুরুত্বপূর্ণ যে আপনি এটি ব্যাক আপ করুন এবং এটি কারও সাথে শেয়ার করবেন না।';

  @override
  String get secretInfoHeader => 'নিরাপত্তাই প্রথম!';

  @override
  String get secretPhrase => 'গোপন বাক্যাংশ';

  @override
  String get secretPhrase12Words => '12 WORDS';

  @override
  String get secretPhrase24Words => '24 WORDS';

  @override
  String get secretWarning =>
      'আপনি যদি আপনার ডিভাইস হারিয়ে ফেলেন বা অ্যাপ্লিকেশনটি আনইনস্টল করেন, তাহলে আপনার তহবিল পুনরুদ্ধারের জন্য আপনার গোপন বাক্যাংশ বা সীড এর প্রয়োজন হবে!';

  @override
  String get securityHeader => 'নিরাপত্তা';

  @override
  String get seed => 'সীড';

  @override
  String get seedInvalid => 'অবৈধ সিড';

  @override
  String get send => 'পাঠান';

  @override
  String get sendConfirm => 'পাঠান';

  @override
  String get sendError => 'একটি ত্রুটি ঘটেছে. পরে আবার চেষ্টা করুন।';

  @override
  String get sendNote => 'মন্তব্য';

  @override
  String get sendToAddressTitle => 'প্রতি';

  @override
  String get sendTxProgressDescription =>
      'রাশি পাঠানো হযচ্ছে অনুগ্রহ করে অপেক্ষা করুন';

  @override
  String get sendTxProgressTitle => 'রাশি পাঠানো হচ্ছে';

  @override
  String get sending => 'পাঠানো';

  @override
  String get sent => 'পাঠানো হয়েছে';

  @override
  String get sentTo => 'Sent to';

  @override
  String get setPassword => 'পাসওয়ার্ড সেট করুন';

  @override
  String get setPasswordSuccess => 'পাসওয়ার্ড সফলভাবে সেট করা হয়েছে';

  @override
  String get setWalletPassword => 'ওয়ালেট পাসওয়ার্ড সেট করুন';

  @override
  String get settingsHeader => 'সেটিংস';

  @override
  String get settingsTransfer => 'পেপার ওয়ালেট থেকে লোড করুন';

  @override
  String get setupFailedMessage => 'কিছু ভুল হয়েছে';

  @override
  String get shareHoosatMobile => 'কাসপিয়াম শেয়ার করুন';

  @override
  String get shareHoosatMobileSubject => 'কাসপিয়াম ওয়ালেট চেক আউট';

  @override
  String get shareHoosatMobileText =>
      'কাসপিয়াম - কাসপা মোবাইল ওয়ালেট দেখুন।\nওয়েবসাইট - mobile.hoosat.fi';

  @override
  String get somethingWentWrong => 'কিছু ভুল হয়েছে';

  @override
  String get systemDefault => 'সিস্টেমের ডিফল্ট';

  @override
  String get tapToHide => 'লুকানোর জন্য আলতো চাপুন';

  @override
  String get tapToReveal => 'দৃশ্যমান করতে আলতো চাপুন';

  @override
  String get themeDark => 'ডার্ক থিম';

  @override
  String get themeHeader => 'থিম';

  @override
  String get themeLight => 'লাইট থিম';

  @override
  String get thisWallet => '#এই ওয়ালেট';

  @override
  String get to => 'প্রতি';

  @override
  String get toAddress => 'ঠিকানার প্রতি';

  @override
  String get tooManyFailedAttempts => 'আনলক করার অনেক ব্যর্থ প্রচেষ্টা।';

  @override
  String get totalValue => 'মোট মূল্য';

  @override
  String get transactionId => 'লেনদেনের আইডি নাম্বার';

  @override
  String get transactionsUppercase => 'লেনদেন';

  @override
  String get transfer => 'স্থানান্তর';

  @override
  String get transferClose =>
      'এই উইন্ডো বন্ধ করতে যে কোনো জায়গায় আলতো চাপুন।';

  @override
  String transferComplete(String amount) {
    return '$amount HTN সফলভাবে আপনার Hoosat Mobile Wallet এ স্থানান্তরিত হয়েছে৷৷\n';
  }

  @override
  String transferConfirmInfo(String amount) {
    return '$amount HTN ব্যালেন্স সহ একটি ওয়ালেট সনাক্ত করা হয়েছে৷';
  }

  @override
  String get transferConfirmInfoSecond =>
      'রাশি স্থানান্তর করতে নিশ্চিত করে আলতো চাপুন।\n';

  @override
  String get transferConfirmInfoThird =>
      'স্থানান্তর সম্পূর্ণ হতে কয়েক সেকেন্ড সময় লাগতে পারে।';

  @override
  String get transferError =>
      'স্থানান্তরের সময় একটি ত্রুটি ঘটেছে৷ অনুগ্রহ করে একটু পরে আবার চেষ্টা করুন।';

  @override
  String get transferHeader => 'তহবিল স্থানান্তর';

  @override
  String transferIntro(String button) {
    return 'এই প্রক্রিয়াটি পেপার ওয়ালেট থেকে আপনার Hoosat Mobile ওয়ালেটে তহবিল স্থানান্তর করবে।\n\nশুরু করতে \"$button\" বোতামে ট্যাপ করুন।';
  }

  @override
  String get transferLoading => 'স্থানান্তর করা হচ্ছে';

  @override
  String get transferManualHint => 'অনুগ্রহ করে নীচে সিডটি লিখুন।';

  @override
  String get transferNoFunds => 'এই সিড এ কোন HTN নেই';

  @override
  String get transferQrScanError => 'এই QR কোডে বৈধ সিড নেই।';

  @override
  String get transferQrScanHint =>
      'একটি কাসপা সীড স্ক্যান করুন\nবা ব্যক্তিগত কী';

  @override
  String get unconfirmed => 'অনিশ্চিত';

  @override
  String get notAccepted => 'গ্রহনযোগ্য নয়';

  @override
  String get accepted => 'গৃহীত';

  @override
  String get unknown => 'অজানা';

  @override
  String get unlock => 'আনলক';

  @override
  String get unlockBiometrics => 'ক্যাস্পিয়াম আনলক করার জন্য প্রমাণীকরণ করুন';

  @override
  String get unlockPin => 'ক্যাস্পিয়াম আনলক করতে PIN লিখুন';

  @override
  String get utxosUppercase => 'UTXOs';

  @override
  String get viewAddress => 'ঠিকানা দেখুন';

  @override
  String get viewTransaction => 'লেনদেন দেখুন';

  @override
  String get walletAddresses => 'ওয়ালেট এর ঠিকানা';

  @override
  String get walletAddress => 'Wallet Address';

  @override
  String get walletName => 'ওয়ালেটের নাম';

  @override
  String get walletNameDescription => 'আপনার ওয়ালেটের জন্য একটি নাম লিখুন';

  @override
  String get walletNameHint => 'ওয়ালেটের নাম';

  @override
  String get walletSetupAddressDiscovery => 'চলন্ত ঠিকানা আবিষ্কার করা';

  @override
  String get walletSetupMessage => 'ওয়ালেট সেট আপ করা হচ্ছে';

  @override
  String get walletsTitle => 'ওয়ালেটস';

  @override
  String get warning => 'সতর্ক থাকুন';

  @override
  String welcomeMessage(String version) {
    return 'স্বাগতম! \n\nএটি ক্যাস্পিয়ামের সংস্করণ $version - কাস্পার জন্য মোবাইল ওয়ালেট';
  }

  @override
  String get welcomeText =>
      'কাস্পিয়ামে স্বাগতম। শুরু করার জন্য, আপনি একটি নতুন ওয়ালেট তৈরি করতে পারেন অথবা বিদ্যমান একটি ব্যবহার করতে পারেন।';

  @override
  String xMinutes(int minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString মিনিটের',
      one: '1 মিনিট',
    );
    return '$_temp0 পরে';
  }

  @override
  String get yes => 'হ্যাঁ';

  @override
  String get yesButton => 'হ্যাঁ';

  @override
  String get yesUppercase => 'হ্যাঁ';

  @override
  String get nodeNotSyncedException => 'নোড সিঙ্ক করা হয় নি';

  @override
  String get nodeNoUTXOIndexException => 'এই নোডের UTXO ইনডেক্স নেই';

  @override
  String get nodeSecureConnection => 'নিরাপদ সংযোগ';

  @override
  String get hoosatUriInvalid => 'অবৈধ Hoosat URI';

  @override
  String get compoundUtxos => 'যৌগিক লেনদেন';

  @override
  String get compoundRequired => 'Compound required';

  @override
  String get compoundRequiredDescription =>
      'The transaction amount requires too many UTXOs. Compounding will reduce the number of UTXOs.';

  @override
  String get compoundUtxosDescription => 'একাধিক UTXO একত্রিত করুন';

  @override
  String get compoundUtxosConfirmation => 'যৌগিক লেনদেন?';

  @override
  String get compoundingUtxos => 'চক্রবৃদ্ধি লেনদেন';

  @override
  String get compoundingMessage => 'অনুগ্রহপূর্বক অপেক্ষা করুন...';

  @override
  String get compoundSuccess => 'যৌগ সফল';

  @override
  String get compoundFailure => 'যৌগিক লেনদেন করতে ব্যর্থ হয়েছে৷';

  @override
  String get compoundTooFewUtxos => 'কমপক্ষে দুটি UTXO প্রয়োজন৷';

  @override
  String get balance => 'ব্যালেন্স';

  @override
  String get maxSend => 'সর্বোচ্চ পাঠান';

  @override
  String get compoundUppercased => 'যৌগ';

  @override
  String get closeUppercased => 'বন্ধ';

  @override
  String get scanMoreAddresses => 'আরও ঠিকানার জন্য স্ক্যান করুন';

  @override
  String get addressDiscovery => 'ঠিকানা আবিষ্কার';

  @override
  String get scanningTitle => 'স্ক্যানিং';

  @override
  String get scanningDescription => 'নতুন ঠিকানার জন্য স্ক্যান করা হচ্ছে...';

  @override
  String get scanMore => 'আরও স্ক্যান করুন';

  @override
  String get scanFailedMessage =>
      'স্ক্যান ব্যর্থ হয়েছে, অনুগ্রহ করে পরে আবার চেষ্টা করুন';

  @override
  String get indexHeader => 'ইনডেক্স';

  @override
  String get currentIndex => 'বর্তমান';

  @override
  String get scannedIndex => 'স্ক্যান করা হয়েছে';

  @override
  String get newIndex => 'নতুন';

  @override
  String get addressFilterDialogTitle => 'ঠিকানা ফিল্টার';

  @override
  String get addressFilterDialogOptionAllAddresses => 'সব ঠিকানা দেখুন';

  @override
  String get addressFilterDialogOptionNonZeroBalances =>
      'ব্যালেন্স সহ ঠিকানা দেখুন';

  @override
  String get importOption24WordsTitle => '24 শব্দের গোপন বাক্যাংশ আমদানি করুন';

  @override
  String get importOption24WordsDescription =>
      'CLI ওয়ালেট এবং লেজারের সাথে সামঞ্জস্যপূর্ণ';

  @override
  String get importOption12WordsTitle => '12 শব্দের গোপন বাক্যাংশ আমদানি করুন';

  @override
  String get importOption12WordsDescription =>
      'ওয়েব ওয়ালেট এবং KDX এর সাথে সামঞ্জস্যপূর্ণ';

  @override
  String get importOptionStandardWalletTitle => 'Import Standard Wallet';

  @override
  String get importOptionStandardWalletDescription =>
      'Standard derivation 12 or 24 word wallets with optional BIP39 passphrase';

  @override
  String get importOptionLegacyWalletTitle => 'Import Legacy Wallet';

  @override
  String get importOptionLegacyWalletDescription =>
      'Legacy derivation 12 word wallets compatible with legacy Web Wallet and KDX';

  @override
  String get importOptionKpubTitle =>
      'শুধুমাত্র পর্যবেক্ষণ করার ওয়ালেট আমদানি করুন';

  @override
  String get importOptionKpubDescription =>
      'একটি বর্ধিত পাবলিক কী ব্যবহার করে একটি ওয়ালেটের ব্যালেন্স এবং লেনদেন নিরীক্ষণ করুন';

  @override
  String get importKpub => 'শুধুমাত্র পর্যবেক্ষণ করার ওয়ালেট আমদানি করুন';

  @override
  String get importKpubHint => ' দয়া করে আপনার বর্ধিত পাবলিক কী লিখুন।';

  @override
  String get importKpubClipboardError =>
      'ক্লিপবোর্ড সামগ্রী একটি বৈধ বর্ধিত পাবলিক কী নয়';

  @override
  String get importKpubQrCodeError => 'QR কোডে একটি বৈধ বর্ধিত পাবলিক কী নেই';

  @override
  String get importKpubInvalidMessage =>
      'আপনার বর্ধিত পাবলিক কী সঠিকভাবে প্রবেশ করানো হয়েছে তা পরীক্ষা করুন!';

  @override
  String get receiveAddressListEmpty => 'প্রাপ্তির ঠিকানা তালিকা খালি';

  @override
  String get changeAddressListEmpty => 'ঠিকানা পরিবর্তনের তালিকা খালি';

  @override
  String get hintAddressListEmpty =>
      'উপরের ডান কোণ থেকে ঠিকানা ফিল্টার চেক করুন';

  @override
  String get invalidSecretPhrase => 'Invalid Secret Phrase';

  @override
  String get invalidSecretPhraseDetails =>
      'The Secret Phrase you entered has an invalid checksum.';

  @override
  String get invalidSecretPhraseConfirmation => 'I know what I\'m doing';

  @override
  String get contactSupport => 'Contact Support';

  @override
  String emailAction(String email) {
    return 'Email $email';
  }

  @override
  String get noteLabel => 'Note:';

  @override
  String get optionalLabel => '(Optional)';

  @override
  String get buyHoosatSubtitle => 'Via Topper by Uphold';

  @override
  String get buyHoosatTitle => 'Buy Hoosat';

  @override
  String get buyHoosatMessage => 'Buy \$HTN quickly & easily.';

  @override
  String get buyHoosatMessageSecondary =>
      'Service provided by Topper, Uphold\'s fiat-to-crypto onramp.';

  @override
  String get getStarted => 'Get Started';

  @override
  String get aboutTopperTitle => 'About Topper';

  @override
  String get aboutTopperDescription =>
      'Topper by Uphold is an easy to use fiat-to-crypto onramp that allows users to buy cryptocurencies using a credit/debit card or with a bank account.';

  @override
  String get moreInfo => 'More Info';

  @override
  String get selectAddress => 'Select Address';

  @override
  String get kpubTitle => 'Extended Public Key';

  @override
  String get kpubAuth => 'View Extended Public Key';

  @override
  String get kpubDescription =>
      'The extended public key can be used to import your wallet as a \'watch only\' wallet.';

  @override
  String get copyKpub => 'Copy Kpub';

  @override
  String get kpubCopied => 'Extended Public Key Copied';

  @override
  String get kpubCopyFailed => 'Failed to copy Extended Public Key';

  @override
  String walletAddressesCopied(String addressType) {
    return 'Wallet $addressType Addresses Copied to Clipboard';
  }

  @override
  String walletAddressesCopyFailed(String addressType) {
    return 'Failed to Copy Wallet $addressType Addresses';
  }

  @override
  String get txReport => 'Transaction Report';

  @override
  String get txReportSubtitle => 'Get CSV file with transaction history';

  @override
  String get txReportDetails =>
      'Generate a transaction report, in CSV format, that contains all the wallet\'s transaction history.';

  @override
  String get txReportOptionIgnoreCompound => 'Ignore compound transactions';

  @override
  String get txReportOptionIgnoreSelfTxs => 'Ignore transactions sent to self';

  @override
  String get txReportOptionRefreshTxs => 'Refresh transactions';

  @override
  String get txReportGenerate => 'Generate';

  @override
  String get txReportStatusRefreshing => 'Refreshing transactions';

  @override
  String get txReportStatusLoading => 'Loading transactions';

  @override
  String get txReportStatusReady => 'Transaction report is ready!';

  @override
  String get txReportGetReport => 'Get Report';

  @override
  String get txReportDate => 'Date';

  @override
  String get txReportSentAmount => 'Sent Amount';

  @override
  String get txReportSentCurrency => 'Sent Currency';

  @override
  String get txReportReceivedAmount => 'Received Amount';

  @override
  String get txReportReceivedCurrency => 'Received Currency';

  @override
  String get txReportFeeAmount => 'Fee Amount';

  @override
  String get txReportFeeCurrency => 'Fee Currency';

  @override
  String get txReportLabel => 'Label';

  @override
  String get txReportDescription => 'Description';

  @override
  String get txReportTxHash => 'TxHash';

  @override
  String get txReportNote => 'Note';

  @override
  String get txReportLabelCost => 'cost';

  @override
  String get txReportFeeForCompound => 'Fee for Compound Transaction';

  @override
  String get txReportFeeForSelfSend => 'Fee to send to own addresses';

  @override
  String get txReportError => 'Error generating report';

  @override
  String txReportNoTxs(int numberOf) {
    return 'Found $numberOf transactions.';
  }

  @override
  String txReportNoLoadedTxs(int loadedTxs, int totalTxs) {
    return '($loadedTxs of $totalTxs)';
  }

  @override
  String get txFilterDialogTitle => 'Transaction Filter';

  @override
  String get txFilterDialogOptionAllTxs => 'Show All Transactions';

  @override
  String get txFilterDialogOptionHideNotAcceptedCoinbase =>
      'Hide Not Accepted Coinbase Transactions';

  @override
  String get requestPasswordHeader => 'Request Password';

  @override
  String get requestPasswordAtLaunch => 'At Launch';

  @override
  String get requestPasswordWhenLocked => 'When Locked';

  @override
  String get requestPasswordWhenSigning => 'When Signing';

  @override
  String get importWalletAdvancedOptions => 'Advanced Options';

  @override
  String get bip39Passphrase => 'BIP39 Passphrase';

  @override
  String get bip39PassphraseWarning =>
      'NOTE: This is not a wallet password, different BIP39 passphrases will open different wallets.';

  @override
  String get bip39PassphraseEnter => 'Enter Passphrase';

  @override
  String get bip39PassphraseConfirm => 'Confirm Passphrase';

  @override
  String get bip39PassphraseMismatch => 'Passphrases do not match!';

  @override
  String get bip39PassphraseNote => 'Wallet with BIP39 passphrase.';

  @override
  String get feePriorityHint => 'Enter Priority Fee';

  @override
  String get feeBaseUppercase => 'BASE FEE';

  @override
  String get feePriorityUppsercase => 'PRIORITY FEE';

  @override
  String get feeUpdateAddressError => 'Failed to recognise destination address';

  @override
  String get feeUpdateRebuildError => 'Failed to rebuild transaction';

  @override
  String get feeUpdateRebuildError2 =>
      'Failed to rebuild transaction with new fee';

  @override
  String get feeUpdateError => 'Failed to update fee';

  @override
  String get feeUpdate => 'Update Fee';

  @override
  String get feeUpdateTitle => 'Updating fee';

  @override
  String get feeSheetRecommendedPriority => 'Recommended Priority Fees';

  @override
  String feeSheetPriorityFeeWarning(String amount, String symbol) {
    return 'New priority fee must be at least $amount $symbol';
  }

  @override
  String get txPending => 'PENDING';

  @override
  String get txPendingMessage => 'This transaction is pending';

  @override
  String get txPendingTitle => 'Pending Transaction';

  @override
  String get txPendingContent =>
      'There is a pending transactions in the mempool.';

  @override
  String get txPendingActionUpdateFee => 'Update Tx Fee';

  @override
  String get txPendingActionRbf => 'Replace By Fee';

  @override
  String get txInMempool => 'in mempool';

  @override
  String get utxoSelectionTitle => 'Select UTXOs';

  @override
  String get utxoSelectionHint => 'Please select more UTXOs';
}
