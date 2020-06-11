import 'package:dartz/dartz.dart';
import 'package:fluttertddnumbertriviaapp/core/error/failures.dart';
import 'package:fluttertddnumbertriviaapp/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
