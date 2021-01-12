import 'package:flutter_sample_app/ui/home/home_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> blocModule(GetIt get) async {
  get.registerFactory(() => HomeBloc());
}
