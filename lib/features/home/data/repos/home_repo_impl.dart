import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:maktabati_app/core/errors/failures.dart';
import 'package:maktabati_app/core/utils/api_service.dart';

import 'package:maktabati_app/features/home/data/models/book_model/book_model.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> getBestSeellerBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming');

      // List<BookModel> books = [];
      return Right(data['items'].map((e) => BookModel.fromJson(e)).toList());
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }

      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');

      // List<BookModel> books = [];
      return Right(data['items'].map((e) => BookModel.fromJson(e)).toList());
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }

      return Left(ServerFailure(e.toString()));
    }
  }
}
