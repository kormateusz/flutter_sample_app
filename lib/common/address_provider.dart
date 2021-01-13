abstract class AddressProvider {
  Future<String> getCurrentAddress();
}

class AddressProviderImpl implements AddressProvider {
  @override
  Future<String> getCurrentAddress() {
    return Future<String>.value("Miłkowskiego 3/402, Kraków");
  }
}
