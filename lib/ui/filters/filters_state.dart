import 'package:flutter_sample_app/models/filter.dart';

class FiltersState {
  final List<Filter> categoryFilters;
  final List<Filter> typesFilters;
  final List<Filter> priceFilters;

  const FiltersState(
      {this.categoryFilters, this.typesFilters, this.priceFilters});

  factory FiltersState.init() =>
      FiltersState(categoryFilters: [], typesFilters: [], priceFilters: []);

  FiltersState copyWith(
          {List<Filter> categoryFilters,
          List<Filter> typesFilters,
          List<Filter> priceFilters,
          Filter selectedCategory,
          Filter selectedTypes,
          Filter selectedPrice}) =>
      FiltersState(
          categoryFilters: categoryFilters ?? this.categoryFilters,
          typesFilters: typesFilters ?? this.typesFilters,
          priceFilters: priceFilters ?? this.priceFilters);
}
