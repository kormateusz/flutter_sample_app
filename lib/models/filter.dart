import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

@freezed
abstract class Filter with _$Filter {
  factory Filter(String label, bool isSelected) = _Filter;
}
