import 'package:flutter_sample_app/models/filter.dart';

abstract class FiltersEvents {}

class LoadFilters implements FiltersEvents {}

class CategoryFilterClick implements FiltersEvents {
  final Filter filter;

  CategoryFilterClick(this.filter);
}

class TypesFilterClick implements FiltersEvents {
  final Filter filter;

  TypesFilterClick(this.filter);
}

class PriceFilterClick implements FiltersEvents {
  final Filter filter;

  PriceFilterClick(this.filter);
}

class ClearFilters implements FiltersEvents {}
