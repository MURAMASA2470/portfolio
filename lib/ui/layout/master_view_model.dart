import 'package:portfolio/data/repository/master/master_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../data/repository/master/master_repository.dart';
import 'master_state.dart';

final masterViewModelProvider =
    StateNotifierProvider.autoDispose<MasterViewModel, AsyncValue<MasterState>>(
  (ref) => MasterViewModel(ref: ref),
);

class MasterViewModel extends StateNotifier<AsyncValue<MasterState>> {
  final AutoDisposeStateNotifierProviderRef _ref;
  MasterViewModel({required AutoDisposeStateNotifierProviderRef ref})
      : _ref = ref,
        super(const AsyncLoading()) {
    load();
  }

  // homeRepository
  late final MasterRepository homeRepository = _ref.read(masterRepositoryProvider);

  // 初期化
  Future<void> load() async {
    final result = await homeRepository.fetch();
    result.when(
      success: (data) {
        state = AsyncValue.data(
          MasterState(count: data),
        );
      },
      failure: (error) {
        state = AsyncValue.error(error);
      },
    );
  }

  void increment() {
    final count = state.value!.count;
    state = AsyncValue.data(
      MasterState(count: count + 1),
    );
  }
}
