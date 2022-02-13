// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hobby_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HobbyStateTearOff {
  const _$HobbyStateTearOff();

  _HobbyState call({int count = 0, int selectedIndex = 0}) {
    return _HobbyState(
      count: count,
      selectedIndex: selectedIndex,
    );
  }
}

/// @nodoc
const $HobbyState = _$HobbyStateTearOff();

/// @nodoc
mixin _$HobbyState {
  int get count => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HobbyStateCopyWith<HobbyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HobbyStateCopyWith<$Res> {
  factory $HobbyStateCopyWith(
          HobbyState value, $Res Function(HobbyState) then) =
      _$HobbyStateCopyWithImpl<$Res>;
  $Res call({int count, int selectedIndex});
}

/// @nodoc
class _$HobbyStateCopyWithImpl<$Res> implements $HobbyStateCopyWith<$Res> {
  _$HobbyStateCopyWithImpl(this._value, this._then);

  final HobbyState _value;
  // ignore: unused_field
  final $Res Function(HobbyState) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? selectedIndex = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$HobbyStateCopyWith<$Res> implements $HobbyStateCopyWith<$Res> {
  factory _$HobbyStateCopyWith(
          _HobbyState value, $Res Function(_HobbyState) then) =
      __$HobbyStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, int selectedIndex});
}

/// @nodoc
class __$HobbyStateCopyWithImpl<$Res> extends _$HobbyStateCopyWithImpl<$Res>
    implements _$HobbyStateCopyWith<$Res> {
  __$HobbyStateCopyWithImpl(
      _HobbyState _value, $Res Function(_HobbyState) _then)
      : super(_value, (v) => _then(v as _HobbyState));

  @override
  _HobbyState get _value => super._value as _HobbyState;

  @override
  $Res call({
    Object? count = freezed,
    Object? selectedIndex = freezed,
  }) {
    return _then(_HobbyState(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HobbyState implements _HobbyState {
  const _$_HobbyState({this.count = 0, this.selectedIndex = 0});

  @JsonKey()
  @override
  final int count;
  @JsonKey()
  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'HobbyState(count: $count, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HobbyState &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.selectedIndex, selectedIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(selectedIndex));

  @JsonKey(ignore: true)
  @override
  _$HobbyStateCopyWith<_HobbyState> get copyWith =>
      __$HobbyStateCopyWithImpl<_HobbyState>(this, _$identity);
}

abstract class _HobbyState implements HobbyState {
  const factory _HobbyState({int count, int selectedIndex}) = _$_HobbyState;

  @override
  int get count;
  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$HobbyStateCopyWith<_HobbyState> get copyWith =>
      throw _privateConstructorUsedError;
}
