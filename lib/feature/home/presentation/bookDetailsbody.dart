import 'package:bookely/feature/home/data/models/book_model.dart';
import 'package:bookely/feature/home/presentation/views/books_details.dart';
import 'package:bookely/feature/home/presentation/views/custome_app_bar.dart';
import 'package:bookely/feature/home/presentation/views/smilar.dart';
import 'package:flutter/material.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                   CustomeAppBar(),
                  BookDetailsSection(
                    book: bookModel,
                  ),
                  Expanded(child:
                      SizedBox(
                        height: 50,
                      ),

                  ),
                   SimilarBooksSection(),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
