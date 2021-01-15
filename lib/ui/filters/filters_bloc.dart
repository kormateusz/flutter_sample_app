import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample_app/models/filter.dart';
import 'package:flutter_sample_app/repositories/filters_repository.dart';
import 'package:flutter_sample_app/ui/filters/filters_event.dart';
import 'package:flutter_sample_app/ui/filters/filters_state.dart';

class FiltersBloc extends Bloc<FiltersEvents, FiltersState> {
  final FiltersRepository _filtersRepository;

  List<Filter> _categoryFilters;
  List<Filter> _typesFilters;
  List<Filter> _priceFilters;

  FiltersBloc(this._filtersRepository) : super(FiltersState()) {
    this.add(LoadFilters());
  }

  @override
  Stream<FiltersState> mapEventToState(FiltersEvents event) async* {
    if (event is LoadFilters || event is ClearFilters) {
      _categoryFilters = await _filtersRepository.getCategoryFilters();
      _typesFilters = await _filtersRepository.getTypesFilters();
      _priceFilters = await _filtersRepository.getPriceFilters();

      yield state.copyWith(
          categoryFilters: _categoryFilters,
          typesFilters: _typesFilters,
          priceFilters: _priceFilters);
    } else if (event is CategoryFilterClick) {
      yield changeCategoryFilter(event.filter);
    } else if (event is TypesFilterClick) {
      yield changeTypesFilter(event.filter);
    } else if (event is PriceFilterClick) {
      yield changePriceFilter(event.filter);
    }
  }

  FiltersState changeCategoryFilter(Filter filter) {
    var indexOf = _categoryFilters.indexOf(filter);
    _categoryFilters[indexOf] = filter.copyWith(isSelected: !filter.isSelected);

    return state.copyWith(categoryFilters: _categoryFilters);
  }

  FiltersState changeTypesFilter(Filter filter) {
    var indexOf = _typesFilters.indexOf(filter);
    _typesFilters[indexOf] = filter.copyWith(isSelected: !filter.isSelected);

    return state.copyWith(typesFilters: _typesFilters);
  }

  FiltersState changePriceFilter(Filter filter) {
    var indexOf = _priceFilters.indexOf(filter);
    _priceFilters[indexOf] = filter.copyWith(isSelected: !filter.isSelected);

    return state.copyWith(priceFilters: _priceFilters);
  }
}
