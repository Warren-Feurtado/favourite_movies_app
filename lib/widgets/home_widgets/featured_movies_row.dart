import 'package:flutter/material.dart';

import '/models/movie_model.dart';
import '/screens/movie_details_screen.dart';

class LongCardsRow extends StatefulWidget {
  const LongCardsRow({super.key});

  @override
  State<LongCardsRow> createState() => _LongCardsRowState();
}

class _LongCardsRowState extends State<LongCardsRow> {
  Iterable<Widget> get longMovieCard {
    List<Movie> suggestedMovies = Movie.suggestedMovies;
    return suggestedMovies.map((movie) {
      return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Container(
            clipBehavior: Clip.antiAlias,
            // margin: const EdgeInsets.symmetric(horizontal: 5.0),
            width: 110,
            decoration: const BoxDecoration(
                color: Color.fromARGB(48, 212, 212, 212),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                )),
            child: Image.network(
              movie.wideImagePath,
              fit: BoxFit.cover,
            ),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: longMovieCard.toList(),
      ),
    );
  }
}

class LongCardsRow2 extends StatefulWidget {
  const LongCardsRow2({super.key});

  @override
  State<LongCardsRow2> createState() => _LongCardsRow2State();
}

class _LongCardsRow2State extends State<LongCardsRow2> {
  List<Movie> suggestedMovies = Movie.suggestedMovies;
  // late Future<List<Movie>> suggestedMovieList;

  @override
  void initState() {
    super.initState();
    // suggestedMovieList = Movie.suggestedMovies as Future<List<Movie>>;
  }

  @override
  Widget build(BuildContext context) {
    return suggestedMoviesList(movies: suggestedMovies);
  }

  Widget suggestedMoviesList({required List<Movie> movies}) {
    return Container(
      height: 150.0,
      child: ListView.builder(
        itemCount: movies.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return LongCardContainer(context, index, movies);
        },
      ),
    );
  }

  Widget LongCardContainer(
      BuildContext context, int index, List<Movie> movies) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailsScreen(movie: movies[index]);
        }));
      },
      child: longCard(movies[index]),
    );
  }

  Widget longCard(Movie movie, {bool isAsset = false}) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          clipBehavior: Clip.antiAlias,
          // margin: const EdgeInsets.symmetric(horizontal: 5.0),
          width: 110,
          decoration: const BoxDecoration(
              color: Color.fromARGB(48, 212, 212, 212),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              )),
          child: Image.network(
            movie.longImagePath,
            fit: BoxFit.cover,
          ),
        ));
  }
}
