import 'package:flutter_sample_app/ui/dashboard/dashboard_bloc.dart';
import 'package:flutter_sample_app/ui/filters/filters_bloc.dart';
import 'package:flutter_sample_app/ui/home/home_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> blocModule(GetIt get) async {
  get.registerFactory(() => HomeBloc());
  get.registerFactory(() => DashboardBloc(get(), get(), get()));
  get.registerFactory(() => FiltersBloc(get()));
}
