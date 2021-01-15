// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'filters_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FiltersStateTearOff {
  const _$FiltersStateTearOff();

// ignore: unused_element
  _FiltersState call(
      [List<Filter> categoryFilters = const [],
      List<Filter> typesFilters = const [],
      List<Filter> priceFilters = const []]) {
    return _FiltersState(
      categoryFilters,
      typesFilters,
      priceFilters,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FiltersState = _$FiltersStateTearOff();

/// @nodoc
mixin _$FiltersState {
  List<Filter> get categoryFilters;
  List<Filter> get typesFilters;
  List<Filter> get priceFilters;

  @JsonKey(ignore: true)
  $FiltersStateCopyWith<FiltersState> get copyWith;
}

/// @nodoc
abstract class $FiltersStateCopyWith<$Res> {
  factory $FiltersStateCopyWith(
          FiltersState value, $Res Function(FiltersState) then) =
      _$FiltersStateCopyWithImpl<$Res>;
  $Res call(
      {List<Filter> categoryFilters,
      List<Filter> typesFilters,
      List<Filter> priceFilters});
}

/// @nodoc
class _$FiltersStateCopyWithImpl<$Res> implements $FiltersStateCopyWith<$Res> {
  _$FiltersStateCopyWithImpl(this._value, this._then);

  final FiltersState _value;
  // ignore: unused_field
  final $Res Function(FiltersState) _then;

  @override
  $Res call({
    Object categoryFilters = freezed,
    Object typesFilters = freezed,
    Object priceFilters = freezed,
  }) {
    return _then(_value.copyWith(
      categoryFilters: categoryFilters == freezed
          ? _value.categoryFilters
          : categoryFilters as List<Filter>,
      typesFilters: typesFilters == freezed
          ? _value.typesFilters
          : typesFilters as List<Filter>,
      priceFilters: priceFilters == freezed
          ? _value.priceFilters
          : priceFilters as List<Filter>,
    ));
  }
}

/// @nodoc
abstract class _$FiltersStateCopyWith<$Res>
    implements $FiltersStateCopyWith<$Res> {
  factory _$FiltersStateCopyWith(
          _FiltersState value, $Res Function(_FiltersState) then) =
      __$FiltersStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Filter> categoryFilters,
      List<Filter> typesFilters,
      List<Filter> priceFilters});
}

/// @nodoc
class __$FiltersStateCopyWithImpl<$Res> extends _$FiltersStateCopyWithImpl<$Res>
    implements _$FiltersStateCopyWith<$Res> {
  __$FiltersStateCopyWithImpl(
      _FiltersState _value, $Res Function(_FiltersState) _then)
      : super(_value, (v) => _then(v as _FiltersState));

  @override
  _FiltersState get _value => super._value as _FiltersState;

  @override
  $Res call({
    Object categoryFilters = freezed,
    Object typesFilters = freezed,
    Object priceFilters = freezed,
  }) {
    return _then(_FiltersState(
      categoryFilters == freezed
          ? _value.categoryFilters
          : categoryFilters as List<Filter>,
      typesFilters == freezed
          ? _value.typesFilters
          : typesFilters as List<Filter>,
      priceFilters == freezed
          ? _value.priceFilters
          : priceFilters as List<Filter>,
    ));
  }
}

/// @nodoc
class _$_FiltersState implements _FiltersState {
  _$_FiltersState(
      [this.categoryFilters = const [],
      this.typesFilters = const [],
      this.priceFilters = const []])
      : assert(categoryFilters != null),
        assert(typesFilters != null),
        assert(priceFilters != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<Filter> categoryFilters;
  @JsonKey(defaultValue: const [])
  @override
  final List<Filter> typesFilters;
  @JsonKey(defaultValue: const [])
  @override
  final List<Filter> priceFilters;

  @override
  String toString() {
    return 'FiltersState(categoryFilters: $categoryFilters, typesFilters: $typesFilters, priceFilters: $priceFilters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FiltersState &&
            (identical(other.categoryFilters, categoryFilters) ||
                const DeepCollectionEquality()
                    .equals(other.categoryFilters, categoryFilters)) &&
            (identical(other.typesFilters, typesFilters) ||
                const DeepCollectionEquality()
                    .equals(other.typesFilters, typesFilters)) &&
            (identical(other.priceFilters, priceFilters) ||
                const DeepCollectionEquality()
                    .equals(other.priceFilters, priceFilters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryFilters) ^
      const DeepCollectionEquality().hash(typesFilters) ^
      const DeepCollectionEquality().hash(priceFilters);

  @JsonKey(ignore: true)
  @override
  _$FiltersStateCopyWith<_FiltersState> get copyWith =>
      __$FiltersStateCopyWithImpl<_FiltersState>(this, _$identity);
}

abstract class _FiltersState implements FiltersState {
  factory _FiltersState(
      [List<Filter> categoryFilters,
      List<Filter> typesFilters,
      List<Filter> priceFilters]) = _$_FiltersState;

  @override
  List<Filter> get categoryFilters;
  @override
  List<Filter> get typesFilters;
  @override
  List<Filter> get priceFilters;
  @override
  @JsonKey(ignore: true)
  _$FiltersStateCopyWith<_FiltersState> get copyWith;
}
