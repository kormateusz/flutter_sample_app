import 'package:get_it/get_it.dart';

import 'modules/blocs_module.dart';

final get = GetIt.instance;

Future<void> init() async {
  blocModule(get);
}
