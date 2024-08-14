part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksLoading extends FeaturedBooksState {}
final class FeaturedBooksError extends FeaturedBooksState {
  final String errorMessage;

 const FeaturedBooksError( this.errorMessage);
}
final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

 const FeaturedBooksSuccess(this.books);
}