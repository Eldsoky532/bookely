import 'package:bloc/bloc.dart';
import 'package:bookely/feature/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model.dart';

part 'featured_state.dart';

class FeaturedCubit extends Cubit<FeaturedState> {
  FeaturedCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }


}
