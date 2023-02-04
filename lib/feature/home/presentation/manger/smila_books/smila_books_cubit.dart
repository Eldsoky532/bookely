import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'smila_books_state.dart';

class SmilaBooksCubit extends Cubit<SmilaBooksState> {
  SmilaBooksCubit(this.homeRepo) : super(SmilaBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
