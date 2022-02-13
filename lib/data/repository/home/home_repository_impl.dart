import 'dart:math';

import 'package:flapp/data/model/result/result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_repository.dart';

final homeRepositoryProvider =
    Provider<HomeRepository>((ref) => HomeRepositoryImpl(ref.read));

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._reader);
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
