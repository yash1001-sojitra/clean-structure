import 'package:clean_architecture/app/common/usecase.dart';
import 'package:clean_architecture/app/common/failure.dart';
import 'package:clean_architecture/src/domain/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class Logout implements UseCase<void, NoParams> {
  Logout(this._repository);
  final AuthenticationRepository _repository;

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return _repository.logout();
  }

  Future<Either<Failure, void>> execute() async {
    return call(const NoParams());
  }
}
