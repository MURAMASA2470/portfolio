import 'package:freezed_annotation/freezed_annotation.dart';

part 'hobby_state.freezed.dart';

@freezed
class HobbyState with _$HobbyState {
  const factory HobbyState({
    @Default(0) int count,
    @Default(0) int selectedIndex,
  }) = _HobbyState;
}
