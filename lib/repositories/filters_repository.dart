import 'package:flutter_sample_app/models/filter.dart';

abstract class FiltersRepository {
  Future<List<Filter>> getCategoryFilters();

  Future<List<Filter>> getTypesFilters();

  Future<List<Filter>> getPriceFilters();
}

class FiltersRepositoryImpl implements FiltersRepository {
  @override
  Future<List<Filter>> getCategoryFilters() {
    List<Filter> categoryFilters = [
      Filter("Food", false),
      Filter("Desserts", false),
      Filter("Drinks", false)
    ];

    return Future<List<Filter>>.value(categoryFilters);
  }

  @override
  Future<List<Filter>> getPriceFilters() {
    List<Filter> priceFilters = [
      Filter("\$", false),
      Filter("\$\$", false),
      Filter("\$\$\$", false)
    ];

    return Future<List<Filter>>.value(priceFilters);
  }

  @override
  Future<List<Filter>> getTypesFilters() {
    List<Filter> typesFilters = [
      Filter("Pizza", false),
      Filter("Meat", false),
      Filter("Soups", false),
      Filter("Snacks", false),
      Filter("Chicken", false),
      Filter("Salads", false),
      Filter("Burgers", false),
      Filter("Cakes", false),
      Filter("Ice creams", false),
      Filter("Pasta", false),
    ];

    return Future<List<Filter>>.value(typesFilters);
  }
}
