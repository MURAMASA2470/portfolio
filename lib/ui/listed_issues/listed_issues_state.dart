import 'package:freezed_annotation/freezed_annotation.dart';

part 'listed_issues_state.freezed.dart';

@freezed
class ListedIssuesState with _$ListedIssuesState {
  const factory ListedIssuesState({
    @Default(0) int count,
    @Default(0) int selectedIndex,
  }) = _ListedIssuesState;
}
