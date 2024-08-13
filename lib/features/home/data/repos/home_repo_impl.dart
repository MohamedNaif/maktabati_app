import 'package:dartz/dartz.dart';

import 'package:maktabati_app/core/errors/failures.dart';

import 'package:maktabati_app/features/home/data/models/book_model/book_model.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> getBestSeellerBooks() {
    // TODO: implement getBestSeellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> getFeaturedBooks() {
    // TODO: implement getFeaturedBooks
    throw UnimplementedError();
  }
}
