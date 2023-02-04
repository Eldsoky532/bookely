import 'package:bookely/core/utils/server_locator/server_locator.dart';
import 'package:bookely/feature/home/data/repo/home_imple.dart';
import 'package:bookely/feature/home/presentation/manger/feature_book/featured_cubit.dart';
import 'package:bookely/feature/home/presentation/manger/newest_books/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';
import 'core/utils/app_routes/app_route.dart';

void main() {
  setupServiceloactor();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(
            create: (context)=>FeaturedCubit(
                getIt.get<HomeRepoImpl>(),
            )..fetchFeaturedBooks()
        ),

          BlocProvider(
            create: (context) => NewestBooksCubit(
              getIt.get<HomeRepoImpl>(),
            )..fetchNewestBooks(),
          )
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
        ));
  }
}
