import 'dart:math';

import 'package:portfolio/data/model/result/result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'hobby_repository.dart';

final hobbyRepositoryProvider =
    Provider<HobbyRepository>((ref) => HobbyRepositoryImpl(ref.read));

class HobbyRepositoryImpl implements HobbyRepository {
  HobbyRepositoryImpl(this._reader);
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
