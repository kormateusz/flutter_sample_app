// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FilterTearOff {
  const _$FilterTearOff();

// ignore: unused_element
  _Filter call(String label, bool isSelected) {
    return _Filter(
      label,
      isSelected,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Filter = _$FilterTearOff();

/// @nodoc
mixin _$Filter {
  String get label;
  bool get isSelected;

  @JsonKey(ignore: true)
  $FilterCopyWith<Filter> get copyWith;
}

/// @nodoc
abstract class $FilterCopyWith<$Res> {
  factory $FilterCopyWith(Filter value, $Res Function(Filter) then) =
      _$FilterCopyWithImpl<$Res>;
  $Res call({String label, bool isSelected});
}

/// @nodoc
class _$FilterCopyWithImpl<$Res> implements $FilterCopyWith<$Res> {
  _$FilterCopyWithImpl(this._value, this._then);

  final Filter _value;
  // ignore: unused_field
  final $Res Function(Filter) _then;

  @override
  $Res call({
    Object label = freezed,
    Object isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed ? _value.label : label as String,
      isSelected:
          isSelected == freezed ? _value.isSelected : isSelected as bool,
    ));
  }
}

/// @nodoc
abstract class _$FilterCopyWith<$Res> implements $FilterCopyWith<$Res> {
  factory _$FilterCopyWith(_Filter value, $Res Function(_Filter) then) =
      __$FilterCopyWithImpl<$Res>;
  @override
  $Res call({String label, bool isSelected});
}

/// @nodoc
class __$FilterCopyWithImpl<$Res> extends _$FilterCopyWithImpl<$Res>
    implements _$FilterCopyWith<$Res> {
  __$FilterCopyWithImpl(_Filter _value, $Res Function(_Filter) _then)
      : super(_value, (v) => _then(v as _Filter));

  @override
  _Filter get _value => super._value as _Filter;

  @override
  $Res call({
    Object label = freezed,
    Object isSelected = freezed,
  }) {
    return _then(_Filter(
      label == freezed ? _value.label : label as String,
      isSelected == freezed ? _value.isSelected : isSelected as bool,
    ));
  }
}

/// @nodoc
class _$_Filter implements _Filter {
  _$_Filter(this.label, this.isSelected)
      : assert(label != null),
        assert(isSelected != null);

  @override
  final String label;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'Filter(label: $label, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Filter &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.isSelected, isSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isSelected, isSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(isSelected);

  @JsonKey(ignore: true)
  @override
  _$FilterCopyWith<_Filter> get copyWith =>
      __$FilterCopyWithImpl<_Filter>(this, _$identity);
}

abstract class _Filter implements Filter {
  factory _Filter(String label, bool isSelected) = _$_Filter;

  @override
  String get label;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$FilterCopyWith<_Filter> get copyWith;
}
