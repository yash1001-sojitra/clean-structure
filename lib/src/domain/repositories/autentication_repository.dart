import 'package:clean_architecture/src/comman/failure.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, void>> login(String email, String password);
}
