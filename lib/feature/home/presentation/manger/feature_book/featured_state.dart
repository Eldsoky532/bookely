part of 'featured_cubit.dart';

@immutable
abstract class FeaturedState {}

class FeaturedInitial extends FeaturedState {}

class FeaturedBooksInitial extends FeaturedState {}

class FeaturedBooksLoading extends FeaturedState {}

class FeaturedBooksFailure extends FeaturedState {
  final String errMessage;

   FeaturedBooksFailure(this.errMessage);
}

class FeaturedBooksSuccess extends FeaturedState {
  final List<BookModel> books;

   FeaturedBooksSuccess(this.books);
}