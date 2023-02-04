import 'package:bookely/core/utils/server_locator/server_locator.dart';
import 'package:bookely/feature/home/data/models/book_model.dart';
import 'package:bookely/feature/home/data/repo/home_imple.dart';
import 'package:bookely/feature/home/presentation/bookDetailsbody.dart';
import 'package:bookely/feature/home/presentation/book_details.dart';
import 'package:bookely/feature/home/presentation/manger/smila_books/smila_books_cubit.dart';
import 'package:bookely/feature/home/presentation/views/home_body.dart';
import 'package:bookely/feature/home/presentation/views/search/earch_view.dart';
import 'package:bookely/feature/splashscreen/splashScreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';


  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeBody(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),


    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => BlocProvider(
        create: (context) => SmilaBooksCubit(
          getIt.get<HomeRepoImpl>(),
        ),
        child: BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ),

  ]
  );
}
