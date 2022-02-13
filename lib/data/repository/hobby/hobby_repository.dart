import 'package:flapp/data/model/result/result.dart';

abstract class HobbyRepository {
  Future<Result<int>> fetch();
}
