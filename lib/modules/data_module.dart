import 'package:flutter_sample_app/common/address_provider.dart';
import 'package:get_it/get_it.dart';

Future<void> dataModule(GetIt get) async {
  get.registerFactory<AddressProvider>(() => AddressProviderImpl());
}
