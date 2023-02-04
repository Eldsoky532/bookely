import 'package:bookely/core/utils/app_routes/app_route.dart';
import 'package:bookely/core/utils/widget/customeErrorWidget.dart';
import 'package:bookely/core/utils/widget/custome_loading_indicator.dart';
import 'package:bookely/feature/home/presentation/manger/feature_book/featured_cubit.dart';
import 'package:bookely/feature/home/presentation/views/custome_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


class FeatureBooks extends StatelessWidget {
  const FeatureBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedCubit,FeaturedState>(
        builder: (context,state){
          if(state is FeaturedBooksSuccess)
            {
              return SizedBox(
                height: MediaQuery.of(context).size.height*0.3,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: state.books.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Padding(
                          padding:const EdgeInsets.symmetric(horizontal: 8),
                        child: GestureDetector(
                          onTap: (){
                            GoRouter.of(context).push(
                              AppRouter.kBookDetailsView,
                              extra: state.books[index],
                            );
                          },
                          child: CustomBookImage(
                            imageUrl: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                                '',
                          ),
                        ),

                      );
                    }
                ),
              );

            }else if (state is FeaturedBooksFailure) {
            return CustomErrorWidget(errMessage: state.errMessage);
          } else {
            return const CustomLoadingIndicator();
          }
        },
    );
  }
}
