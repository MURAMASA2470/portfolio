// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'listed_issues_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListedIssuesStateTearOff {
  const _$ListedIssuesStateTearOff();

  _ListedIssuesState call({int count = 0, int selectedIndex = 0}) {
    return _ListedIssuesState(
      count: count,
      selectedIndex: selectedIndex,
    );
  }
}

/// @nodoc
const $ListedIssuesState = _$ListedIssuesStateTearOff();

/// @nodoc
mixin _$ListedIssuesState {
  int get count => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListedIssuesStateCopyWith<ListedIssuesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListedIssuesStateCopyWith<$Res> {
  factory $ListedIssuesStateCopyWith(
          ListedIssuesState value, $Res Function(ListedIssuesState) then) =
      _$ListedIssuesStateCopyWithImpl<$Res>;
  $Res call({int count, int selectedIndex});
}

/// @nodoc
class _$ListedIssuesStateCopyWithImpl<$Res>
    implements $ListedIssuesStateCopyWith<$Res> {
  _$ListedIssuesStateCopyWithImpl(this._value, this._then);

  final ListedIssuesState _value;
  // ignore: unused_field
  final $Res Function(ListedIssuesState) _then;

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
abstract class _$ListedIssuesStateCopyWith<$Res>
    implements $ListedIssuesStateCopyWith<$Res> {
  factory _$ListedIssuesStateCopyWith(
          _ListedIssuesState value, $Res Function(_ListedIssuesState) then) =
      __$ListedIssuesStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, int selectedIndex});
}

/// @nodoc
class __$ListedIssuesStateCopyWithImpl<$Res>
    extends _$ListedIssuesStateCopyWithImpl<$Res>
    implements _$ListedIssuesStateCopyWith<$Res> {
  __$ListedIssuesStateCopyWithImpl(
      _ListedIssuesState _value, $Res Function(_ListedIssuesState) _then)
      : super(_value, (v) => _then(v as _ListedIssuesState));

  @override
  _ListedIssuesState get _value => super._value as _ListedIssuesState;

  @override
  $Res call({
    Object? count = freezed,
    Object? selectedIndex = freezed,
  }) {
    return _then(_ListedIssuesState(
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

class _$_ListedIssuesState implements _ListedIssuesState {
  const _$_ListedIssuesState({this.count = 0, this.selectedIndex = 0});

  @JsonKey()
  @override
  final int count;
  @JsonKey()
  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'ListedIssuesState(count: $count, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListedIssuesState &&
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
  _$ListedIssuesStateCopyWith<_ListedIssuesState> get copyWith =>
      __$ListedIssuesStateCopyWithImpl<_ListedIssuesState>(this, _$identity);
}

abstract class _ListedIssuesState implements ListedIssuesState {
  const factory _ListedIssuesState({int count, int selectedIndex}) =
      _$_ListedIssuesState;

  @override
  int get count;
  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$ListedIssuesStateCopyWith<_ListedIssuesState> get copyWith =>
      throw _privateConstructorUsedError;
}
