import 'package:portfolio/data/model/result/result.dart';

abstract class ListedIssuesRepository {
  Future<Result<int>> fetch();
}
