// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'master_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MasterStateTearOff {
  const _$MasterStateTearOff();

  _MasterState call({int count = 0, int selectedIndex = 0}) {
    return _MasterState(
      count: count,
      selectedIndex: selectedIndex,
    );
  }
}

/// @nodoc
const $MasterState = _$MasterStateTearOff();

/// @nodoc
mixin _$MasterState {
  int get count => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MasterStateCopyWith<MasterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterStateCopyWith<$Res> {
  factory $MasterStateCopyWith(
          MasterState value, $Res Function(MasterState) then) =
      _$MasterStateCopyWithImpl<$Res>;
  $Res call({int count, int selectedIndex});
}

/// @nodoc
class _$MasterStateCopyWithImpl<$Res> implements $MasterStateCopyWith<$Res> {
  _$MasterStateCopyWithImpl(this._value, this._then);

  final MasterState _value;
  // ignore: unused_field
  final $Res Function(MasterState) _then;

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
abstract class _$MasterStateCopyWith<$Res>
    implements $MasterStateCopyWith<$Res> {
  factory _$MasterStateCopyWith(
          _MasterState value, $Res Function(_MasterState) then) =
      __$MasterStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, int selectedIndex});
}

/// @nodoc
class __$MasterStateCopyWithImpl<$Res> extends _$MasterStateCopyWithImpl<$Res>
    implements _$MasterStateCopyWith<$Res> {
  __$MasterStateCopyWithImpl(
      _MasterState _value, $Res Function(_MasterState) _then)
      : super(_value, (v) => _then(v as _MasterState));

  @override
  _MasterState get _value => super._value as _MasterState;

  @override
  $Res call({
    Object? count = freezed,
    Object? selectedIndex = freezed,
  }) {
    return _then(_MasterState(
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

class _$_MasterState implements _MasterState {
  const _$_MasterState({this.count = 0, this.selectedIndex = 0});

  @JsonKey()
  @override
  final int count;
  @JsonKey()
  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'MasterState(count: $count, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MasterState &&
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
  _$MasterStateCopyWith<_MasterState> get copyWith =>
      __$MasterStateCopyWithImpl<_MasterState>(this, _$identity);
}

abstract class _MasterState implements MasterState {
  const factory _MasterState({int count, int selectedIndex}) = _$_MasterState;

  @override
  int get count;
  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$MasterStateCopyWith<_MasterState> get copyWith =>
      throw _privateConstructorUsedError;
}
