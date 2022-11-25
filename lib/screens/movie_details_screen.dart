import 'dart:html';

import 'package:flutter/material.dart';
import '../models/movie_model.dart';

import 'dart:ui';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsScreen extends StatefulWidget {
  final Movie movie;
  const DetailsScreen({super.key, required this.movie});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: Color.fromARGB(255, 0, 0, 43),
    //   body: NestedScrollView(
    //     headerSliverBuilder: (context, innerBoxIsScrolled) => [
    //       SliverAppBar(
    //         backgroundColor: Color.fromARGB(134, 0, 0, 0),
    //         elevation: 0,
    //         expandedHeight: 250,
    //         floating: true,
    //         pinned: true,
    //         flexibleSpace: FlexibleSpaceBar(
    //           collapseMode: CollapseMode.none,
    //           background: Stack(
    //             fit: StackFit.expand,
    //             children: [
    //               Image.network(
    //                 widget.movie.wideImagePath,
    //                 fit: BoxFit.cover,
    //               ),

    //               //IMAGE GRADIENT
    //               const Positioned.fill(
    //                 child: DecoratedBox(
    //                   decoration: BoxDecoration(
    //                     gradient: LinearGradient(
    //                       colors: [
    //                         Color.fromARGB(75, 0, 0, 0),
    //                         Color.fromARGB(252, 0, 0, 0),
    //                       ],
    //                       begin: Alignment.topCenter,
    //                       end: Alignment.bottomCenter,
    //                       stops: [0.1, 0.9],
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //     body: Container(
    //       // margin: EdgeInsets.only(top: 20),
    //       color: Color.fromARGB(255, 0, 0, 0),
    //     ),
    //   ),
    // );
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          color: const Color.fromARGB(255, 0, 0, 43),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: NetworkImage(
                    widget.movie.longImagePath,
                  ),
                  fit: BoxFit.cover,
                )),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(53, 0, 0, 0),
                          Color.fromARGB(115, 0, 0, 0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 1],
                      ),
                    ),
                  ),
                ),
                // child: Container(
                //   decoration: const BoxDecoration(
                //     gradient: LinearGradient(
                //       colors: [
                //         Color.fromARGB(0, 0, 0, 0),
                //         Color.fromARGB(110, 0, 0, 0),
                //       ],
                //       begin: Alignment.topCenter,
                //       end: Alignment.bottomCenter,
                //       stops: [0.1, 1],
                //     ),
                //   ),
                // ),
              ),

              SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(top: 250),

                  // color: Color.fromARGB(255, 0, 0, 43),
                  color: const Color.fromARGB(0, 4, 152, 63),
                  child: Stack(
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(top: 70, left: 15, right: 15),
                        padding: const EdgeInsets.only(top: 110, bottom: 150),
                        // height: 50,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(226, 0, 0, 47),
                                // blurStyle: BlurStyle.solid,
                                blurRadius: 30,
                                spreadRadius: 40),
                            BoxShadow(
                                color: Color.fromARGB(255, 0, 0, 47),
                                // blurStyle: BlurStyle.solid,
                                blurRadius: 20,
                                spreadRadius: 10),
                            BoxShadow(
                                color: Color.fromARGB(255, 0, 0, 47),
                                // blurStyle: BlurStyle.solid,
                                blurRadius: 5,
                                spreadRadius: 10)
                          ],
                          // borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(30),
                          //     topRight: Radius.circular(30)),
                          // color: Color.fromARGB(255, 0, 0, 43),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 13, horizontal: 20),
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        side: const BorderSide(
                                            color: Color.fromARGB(
                                                0, 255, 255, 255)),
                                        backgroundColor: const Color.fromARGB(
                                            255, 255, 0, 0)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Icon(Icons.slow_motion_video),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Watch Trailer',
                                          style: TextStyle(fontSize: 13),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    color: Colors.transparent,
                                    height: 30,
                                    // width: 100,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Container(
                                            // width: 30,
                                            child: Center(
                                              child: TextButton(
                                                  onPressed: () {},
                                                  style: TextButton.styleFrom(
                                                      padding:
                                                          EdgeInsets.all(20),
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255, 0, 0, 47),
                                                      side: const BorderSide(
                                                          color: Color.fromARGB(
                                                              0,
                                                              255,
                                                              255,
                                                              255))),
                                                  child: Column(
                                                    children: [
                                                      const Icon(
                                                        Icons.favorite_border,
                                                        size: 20,
                                                        color: Color.fromARGB(
                                                            237, 203, 203, 203),
                                                      ),
                                                      Text('Save')
                                                    ],
                                                  )),
                                            ),
                                          ),
                                          Container(
                                            width: 30,
                                            child: Center(
                                              child: TextButton(
                                                  onPressed: () {},
                                                  style: TextButton.styleFrom(
                                                      padding:
                                                          EdgeInsets.all(0),
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255, 0, 0, 47),
                                                      side: const BorderSide(
                                                          color: Color.fromARGB(
                                                              0,
                                                              255,
                                                              255,
                                                              255))),
                                                  child: const Icon(
                                                    Icons.share_outlined,
                                                    size: 20,
                                                    color: Color.fromARGB(
                                                        237, 203, 203, 203),
                                                  )),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 15.0),
                              child: Divider(
                                // height: 1,
                                thickness: 2,
                                color: Color.fromARGB(121, 255, 255, 255),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 20, bottom: 2.0),
                              width: double.infinity,
                              child: const Text(
                                'Description',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Color.fromARGB(209, 255, 255, 255),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text(
                              widget.movie.description,
                              style: const TextStyle(
                                  color: Color.fromARGB(218, 255, 255, 255),
                                  fontSize: 13,
                                  height: 1.8),
                            ),
                            // const SizedBox(
                            //   height: 500,
                            // )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //LONG IMAGE CONTAINER
                            Container(
                              // margin: EdgeInsets.only(left: 20.0),
                              width: 110.0,
                              height: 160.0,
                              decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.all(Radius.circular(2)),
                                  // boxShadow: const [
                                  //   BoxShadow(
                                  //       color: Color.fromARGB(99, 0, 0, 0),
                                  //       blurStyle: BlurStyle.normal,
                                  //       blurRadius: 3,
                                  //       spreadRadius: 1)
                                  // ],
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          widget.movie.longImagePath),
                                      fit: BoxFit.cover)),
                            ),

                            const SizedBox(
                              width: 15,
                            ),

                            Expanded(
                              child: Column(
                                // mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.movie.title,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 21,
                                      fontWeight: FontWeight.w700,
                                      // overflow: TextOverflow.
                                    ),
                                  ),
                                  RatingBarIndicator(
                                    unratedColor: const Color.fromARGB(
                                        131, 162, 162, 162),
                                    rating: 2.75,
                                    itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    itemCount: 5,
                                    itemSize: 15.0,
                                    itemPadding: const EdgeInsets.only(
                                        right: 1, top: 3.0, bottom: 3.0),
                                    direction: Axis.horizontal,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${widget.movie.year} - ',
                                        style: const TextStyle(
                                            color: Color.fromARGB(
                                                191, 255, 255, 255),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        '${widget.movie.duration.inHours}h ${widget.movie.duration.inMinutes.remainder(60)}m',
                                        style: const TextStyle(
                                            color: Color.fromARGB(
                                                183, 255, 255, 255),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '${widget.movie.category}',
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(183, 255, 255, 255),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              //APPBAR
              // Container(
              //     height: 50.0,
              //     child: AppBar(
              //       backgroundColor: Colors.transparent,
              //       elevation: 0,
              //     )),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => setState(() => currentNavIndex = index),
          currentIndex: currentNavIndex,
          iconSize: 20,
          selectedFontSize: 12,
          selectedItemColor: const Color.fromARGB(255, 228, 0, 0),
          backgroundColor: const Color.fromARGB(116, 0, 0, 0),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(220, 0, 0, 0),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: 'Search',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Profile',
              backgroundColor: Colors.black,
            ),
          ],
        ));
  }
}
