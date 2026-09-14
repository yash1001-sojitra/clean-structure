import 'package:clean_architecture/app/common/usecase.dart';
import 'package:clean_architecture/app/common/failure.dart';
import 'package:clean_architecture/src/domain/entities/user.dart';
import 'package:clean_architecture/src/domain/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

class LoginParams extends Equatable {
  const LoginParams({required this.email, required this.password});
  final String email;
  final String password;

  @override
  List<Object?> get props => [email, password];
}

@injectable
class SignIn implements UseCase<User, LoginParams> {
  SignIn(this._repository);
  final AuthenticationRepository _repository;

  @override
  Future<Either<Failure, User>> call(LoginParams params) async {
    return _repository.login(params.email, params.password);
  }

  /// Convenience method for direct invocation
  Future<Either<Failure, User>> execute(String email, String password) async {
    return call(LoginParams(email: email, password: password));
  }
}
