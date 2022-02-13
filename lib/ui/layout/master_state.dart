import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_state.freezed.dart';

@freezed
class MasterState with _$MasterState {
  const factory MasterState({
    @Default(0) int count,
    @Default(0) int selectedIndex,
  }) = _MasterState;
}
