import 'dart:math';

import 'package:portfolio/data/model/result/result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'master_repository.dart';

final masterRepositoryProvider =
    Provider<MasterRepository>((ref) => MasterRepositoryImpl(ref.read));

class MasterRepositoryImpl implements MasterRepository {
  MasterRepositoryImpl(this._reader);
  final Reader _reader;

  @override
  Future<Result<int>> fetch() async {
    return Result.guardFuture(() async {
      await Future.delayed(const Duration(seconds: 2));

      final rand = Random();
      return rand.nextInt(100);
    });
  }
}
