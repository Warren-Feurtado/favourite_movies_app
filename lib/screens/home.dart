import 'package:flutter/material.dart';
import '../widgets/home_widgets/home_carousel.dart';
import '../widgets/home_widgets/categories_row.dart';
import '../widgets/home_widgets/featured_movies_row.dart';

import '../models/movie_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Movie> suggestedMovies = Movie.suggestedMovies;
    return Scaffold(
        extendBodyBehindAppBar: true,
        // extendBody: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 43),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(189, 0, 0, 0),
          title: const Text('Movies App'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 55.0, bottom: 15.0),
            child: Column(
              children: [
                const HomeCarousel(),
                const CategoriesRow(),

                //FEATURED MOVIES TITLE
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  margin: const EdgeInsets.only(top: 25.0, bottom: 2.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    'Featured Movies',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(239, 255, 255, 255),
                        fontWeight: FontWeight.w600),
                  ),
                ),

                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    margin: const EdgeInsets.only(top: 5.0),
                    // height: 130,
                    width: MediaQuery.of(context).size.width,
                    child: const LongCardsRow2()),

                //TRENDING MOVIES TITLE
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  margin: const EdgeInsets.only(top: 30.0, bottom: 2.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    'Trending Now',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(239, 255, 255, 255),
                        fontWeight: FontWeight.w600),
                  ),
                ),

                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    margin: const EdgeInsets.only(top: 5.0),
                    // height: 130,
                    width: MediaQuery.of(context).size.width,
                    child: const LongCardsRow()),

                //POPULAR MOVIES TITLE
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  margin: const EdgeInsets.only(top: 30.0, bottom: 2.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    'Popular Movies',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(239, 255, 255, 255),
                        fontWeight: FontWeight.w600),
                  ),
                ),

                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    margin: const EdgeInsets.only(top: 5.0),
                    // height: 130,
                    width: MediaQuery.of(context).size.width,
                    child: const LongCardsRow()),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => setState(() => currentNavIndex = index),
          currentIndex: currentNavIndex,
          iconSize: 20,
          selectedFontSize: 12,
          selectedItemColor: const Color.fromARGB(255, 228, 0, 0),
          backgroundColor: const Color.fromARGB(116, 0, 0, 0),
          items: [
            BottomNavigationBarItem(
              icon: IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
              label: 'Home',
              backgroundColor: const Color.fromARGB(220, 0, 0, 0),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.search_rounded)),
              label: 'Search',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.favorite)),
              label: 'Favorites',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.account_circle_rounded)),
              label: 'Profile',
              backgroundColor: Colors.black,
            ),
          ],
        ));
  }
}
