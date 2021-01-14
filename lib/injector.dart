import 'package:flutter_sample_app/modules/repositories_module.dart';
import 'package:get_it/get_it.dart';

import 'modules/blocs_module.dart';
import 'modules/data_module.dart';

final get = GetIt.instance;

Future<void> init() async {
  blocModule(get);
  repositoriesModule(get);
  dataModule(get);
}
