import 'package:clean_architecture/app/common/usecase.dart';
import 'package:clean_architecture/app/common/failure.dart';
import 'package:clean_architecture/src/domain/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class CheckAuthStatus implements UseCase<bool, NoParams> {
  CheckAuthStatus(this._repository);
  final AuthenticationRepository _repository;

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    return _repository.checkAuthStatus();
  }

  Future<Either<Failure, bool>> execute() async {
    return call(const NoParams());
  }
}
