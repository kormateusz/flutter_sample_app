import 'package:flutter_sample_app/repositories/events_repository.dart';
import 'package:flutter_sample_app/repositories/filters_repository.dart';
import 'package:flutter_sample_app/repositories/popular_sets_repository.dart';
import 'package:get_it/get_it.dart';

Future<void> repositoriesModule(GetIt get) async {
  get.registerLazySingleton<PopularSetRepository>(
      () => PopularSetRepositoryImpl());
  get.registerLazySingleton<EventsRepository>(() => EventsRepositoryImpl());
  get.registerLazySingleton<FiltersRepository>(() => FiltersRepositoryImpl());
}
