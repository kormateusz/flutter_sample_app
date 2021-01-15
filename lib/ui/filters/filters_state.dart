import 'package:flutter_sample_app/models/filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters_state.freezed.dart';

@freezed
abstract class FiltersState with _$FiltersState {
  factory FiltersState(
      [@Default([]) List<Filter> categoryFilters,
      @Default([]) List<Filter> typesFilters,
      @Default([]) List<Filter> priceFilters]) = _FiltersState;
}
