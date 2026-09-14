import 'package:clean_architecture/app/common/failure.dart';
import 'package:clean_architecture/src/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, User>> login(String email, String password);
  Future<Either<Failure, User>> register(String name, String email, String password);
  Future<Either<Failure, bool>> checkAuthStatus();
  Future<Either<Failure, void>> logout();
  Future<Either<Failure, String?>> getSavedToken();
}
