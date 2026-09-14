import 'package:clean_architecture/app/common/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

/// Base contract for all business use cases in the Domain layer.
///
/// [T] is the successful return type.
/// [Params] represents the parameters required by the usecase.
abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

/// Helper class to represent use cases that take no parameters.
class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object?> get props => [];
}
