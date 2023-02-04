import 'package:bookely/core/utils/style.dart';
import 'package:bookely/feature/home/presentation/views/best_seller_total.dart';
import 'package:bookely/feature/home/presentation/views/custome_app_bar.dart';
import 'package:bookely/feature/home/presentation/views/feature_listview.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics:const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: CustomeAppBar()),
                FeatureBooks(),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: Text(
                    'Newset Books',
                    style: Styles.textStyle18,

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: BestSellerListView(),
            ),
          ),
        ],
      ),
    );
  }
}
