import 'package:dartz/dartz.dart';
import 'package:fluttertddnumbertriviaapp/core/error/failures.dart';
import 'package:fluttertddnumbertriviaapp/core/usecases/usecase.dart';
import 'package:fluttertddnumbertriviaapp/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:fluttertddnumbertriviaapp/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams>{
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia({this.repository});

  Future<Either<Failure, NumberTrivia>> call(NoParams noParams) async {
    return await repository.getRandomNumberTrivia();
  }
}

