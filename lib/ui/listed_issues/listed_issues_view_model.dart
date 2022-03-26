import 'package:portfolio/data/repository/listed_issues/listed_issues_repository.dart';
import 'package:portfolio/data/repository/listed_issues/listed_issues_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'listed_issues_state.dart';

final listedIssuesViewModelProvider = StateNotifierProvider.autoDispose<
    ListedIssuesViewModel, AsyncValue<ListedIssuesState>>(
  (ref) => ListedIssuesViewModel(ref: ref),
);

class ListedIssuesViewModel
    extends StateNotifier<AsyncValue<ListedIssuesState>> {
  final AutoDisposeStateNotifierProviderRef _ref;
  ListedIssuesViewModel({required AutoDisposeStateNotifierProviderRef ref})
      : _ref = ref,
        super(const AsyncLoading()) {
    load();
  }

  late final ListedIssuesRepository listedIssuesRepository =
      _ref.read(listedIssuesRepositoryProvider);

  Future<void> load() async {
    final result = await listedIssuesRepository.fetch();
    result.when(
      success: (data) {
        state = AsyncValue.data(ListedIssuesState(count: data));
      },
      failure: (error) {
        state = AsyncValue.error(error);
      },
    );
  }
}
