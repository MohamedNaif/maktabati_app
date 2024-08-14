import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:maktabati_app/features/home/data/repos/home_repo.dart';

import '../../../data/models/book_model/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> getFeaturedBooks()async{

    emit(FeaturedBooksLoading());
    var result = await homeRepo.getFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksError(failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
