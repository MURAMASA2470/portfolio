import 'package:charts_flutter/flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(0) int count,
    @Default(0) int selectedIndex,
    @Default(false) bool panelState,
  }) = _HomeState;
}
