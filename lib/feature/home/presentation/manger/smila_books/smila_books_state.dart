part of 'smila_books_cubit.dart';

@immutable
abstract class SmilaBooksState {}

class SmilaBooksInitial extends SmilaBooksState {}

class SimilarBooksFailure extends SmilaBooksState {
  final String errMessage;

   SimilarBooksFailure(this.errMessage);
}

class SimilarBooksSuccess extends SmilaBooksState {
  final List<BookModel> books;

  SimilarBooksSuccess(this.books);
}

class SimilarBooksLoading extends SmilaBooksState {}
