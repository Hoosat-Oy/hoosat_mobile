import 'contact.dart';

const hoosatDevFundAddress =
    'hoosat:qp4ad2eh72xc8dtjjyz4llxzq9utn6k26uyl644xxw70wskdfl85zsqj9k4vz';

const communityMarketingFundAddress =
    'hoosat:qp4ad2eh72xc8dtjjyz4llxzq9utn6k26uyl644xxw70wskdfl85zsqj9k4vz';

const donationAddresses = const [
  Contact(
    name: 'Hoosat Dev Fund',
    address: hoosatDevFundAddress,
  ),
  Contact(
    name: 'Community Marketing Fund',
    address: communityMarketingFundAddress,
  )
];

final labeledAddresses = Map.fromEntries(
  donationAddresses.map((e) => MapEntry(e.address, e)),
);
