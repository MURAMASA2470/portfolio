import 'package:portfolio/data/model/result/result.dart';

abstract class MasterRepository {
  Future<Result<int>> fetch();
}
