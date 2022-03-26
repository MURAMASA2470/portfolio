import 'dart:math';

import 'package:portfolio/data/model/result/result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'listed_issues_repository.dart';

final listedIssuesRepositoryProvider = Provider<ListedIssuesRepository>(
    (ref) => ListedIssuesRepositoryImpl(ref.read));

class ListedIssuesRepositoryImpl implements ListedIssuesRepository {
  ListedIssuesRepositoryImpl(this._reader);
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
