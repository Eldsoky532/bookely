import 'package:bookely/core/utils/app_routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splahbody extends StatefulWidget {
  const Splahbody({Key? key}) : super(key: key);

  @override
  State<Splahbody> createState() => _SplahbodyState();
}

class _SplahbodyState extends State<Splahbody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://images.pexels.com/photos/1031588/pexels-photo-1031588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',

            ),
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.2),
              ]
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book App',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),

                Text(
                  'See Book nearby \nFavourite',
                  style:
                  TextStyle(color: Colors.white, fontSize: 18, height: 1.4),
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [Colors.yellow, Colors.orange])),
                  child: MaterialButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kHomeView);

                    },
                    minWidth: double.infinity,
                    child: Text(
                      "Start",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
