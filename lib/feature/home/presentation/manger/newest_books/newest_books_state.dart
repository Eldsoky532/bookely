part of 'newest_books_cubit.dart';

@immutable
abstract class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}

class NewsetBooksInitial extends NewestBooksState {}

class NewsetBooksLoading extends NewestBooksState {}

class NewsetBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

   NewsetBooksSuccess(this.books);
}

class NewsetBooksFailure extends NewestBooksState {
  final String errMessage;

   NewsetBooksFailure(this.errMessage);
}