import 'package:flapp/data/model/result/result.dart';

abstract class HomeRepository {
  Future<Result<int>> fetch();
}
