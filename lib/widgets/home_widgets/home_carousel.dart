import 'package:flutter/material.dart';
import '/models/movie_model.dart';

import 'package:carousel_slider/carousel_slider.dart';

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({super.key});

  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  @override
  Widget build(BuildContext context) {
    List<Movie> suggestedMovies = Movie.suggestedMovies;

    return Container(
      // height: 250,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider(
        options: CarouselOptions(
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          viewportFraction: 0.95,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          autoPlayAnimationDuration: const Duration(milliseconds: 1500),
          autoPlayCurve: Curves.fastOutSlowIn,
          aspectRatio: 16 / 11,
        ),
        items: suggestedMovies.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 3.0, right: 3.0, top: 10.0),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(54, 213, 213, 213),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(148, 0, 9, 44),
                        blurRadius: 4.0,
                        spreadRadius: 3.0,
                      )
                    ]),
                clipBehavior: Clip.antiAlias,
                child: Image.network(
                  i.wideImagePath,
                  fit: BoxFit.cover,
                  // alignment: Alignment.topCenter,
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
