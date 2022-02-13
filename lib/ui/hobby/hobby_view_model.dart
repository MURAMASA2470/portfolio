import 'package:portfolio/data/repository/hobby/hobby_repository.dart';
import 'package:portfolio/data/repository/hobby/hobby_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'hobby_state.dart';

final hobbyViewModelProvider =
    StateNotifierProvider.autoDispose<HobbyViewModel, AsyncValue<HobbyState>>(
  (ref) => HobbyViewModel(ref: ref),
);

class HobbyViewModel extends StateNotifier<AsyncValue<HobbyState>> {
  final AutoDisposeStateNotifierProviderRef _ref;
  HobbyViewModel({required AutoDisposeStateNotifierProviderRef ref})
      : _ref = ref,
        super(const AsyncLoading()) {
    load();
  }

  late final HobbyRepository hobbyRepository =
      _ref.read(hobbyRepositoryProvider);

  Future<void> load() async {
    final result = await hobbyRepository.fetch();
    result.when(
      success: (data) {
        state = AsyncValue.data(HobbyState(count: data));
      },
      failure: (error) {
        state = AsyncValue.error(error);
      },
    );
  }
}
