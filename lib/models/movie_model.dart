class Movie {
  int id = 0;
  String title;
  String wideImagePath;
  String longImagePath;
  String trailerPath;
  String category;
  String description;
  int year;
  Duration duration;

  Movie({
    required this.id,
    required this.title,
    required this.wideImagePath,
    required this.longImagePath,
    required this.trailerPath,
    required this.category,
    required this.description,
    required this.year,
    required this.duration,
  });
  Movie.withoutID({
    required this.title,
    required this.wideImagePath,
    required this.longImagePath,
    required this.trailerPath,
    required this.category,
    required this.description,
    required this.year,
    required this.duration,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    print(json);
    return Movie(
      id: json['id'],
      title: json['title'],
      wideImagePath: json['imageWide'],
      longImagePath: json['imageLong'],
      trailerPath: json['trailer'],
      category: json['category'],
      description: json['description'],
      year: json['year'],
      duration: json['duration'],
    );
  }

  static List<Movie> suggestedMovies = [
    Movie(
      id: 1,
      title: 'Day Shift',
      wideImagePath:
          'https://horror-nation.com/wp-content/uploads/2022/08/dayshift-feature-use.jpg',
      longImagePath:
          'https://m.media-amazon.com/images/M/MV5BMDdhMzBmYWYtOWExNS00NzNjLThlYTEtZmI0ZjRmMTJmMDliXkEyXkFqcGdeQXVyMTQyMTMwOTk0._V1_.jpg',
      trailerPath: 'assests/movies/Monster 03 by TechBoyz.mp4',
      category: 'Comedy, Adventure, Fantasy',
      description:
          'A hard-working, blue-collar dad just wants to provide a good life for his quick-witted 10-year-old daughter. His mundane San Fernando Valley pool cleaning job is a front for his real source of income: hunting and killing vampires.',
      year: 2022,
      duration: Duration(hours: 1, minutes: 53),
    ),
    Movie(
      id: 2,
      title: 'The Lost City',
      wideImagePath:
          'https://www.fsm-media.com/wp-content/uploads/2022/02/269421777_131258876005865_7360873484800712228_n-scaled.jpg',
      longImagePath:
          'https://themoviespoiler.com/wp-content/uploads/2022/03/lost_city.jpg',
      trailerPath: 'assests/movies/Monster 03 by TechBoyz.mp4',
      category: 'Comedy, Adventure, Action',
      description:
          'A reclusive romance novelist on a book tour with her cover model gets swept up in a kidnapping attempt that lands them both in a cutthroat jungle adventure.',
      year: 2022,
      duration: Duration(hours: 1, minutes: 52),
    ),
    Movie(
      id: 3,
      title: 'The Gray Man',
      wideImagePath:
          'https://www.transcontinentaltimes.com/wp-content/uploads/2022/07/The-Gray-Man-sequel-and-spinoff-announced-Khushant-Runghe.jpeg',
      longImagePath:
          'https://static.metacritic.com/images/products/movies/9/f62b27bb506139ad7bb5ce70fca025b9.jpg',
      trailerPath: 'assests/movies/Monster 03 by TechBoyz.mp4',
      category: 'Action, Thriller',
      description:
          'When the CIA\'s most skilled operative-whose true identity is known to none-accidentally uncovers dark agency secrets, a psychopathic former colleague puts a bounty on his head, setting off a global manhunt by international assassins.',
      year: 2022,
      duration: Duration(hours: 2, minutes: 2),
    ),
    Movie(
      id: 4,
      title: 'Top Gun Maverick',
      wideImagePath:
          'https://executive-bulletin.com/wp-content/uploads/2022/09/TopGunMaverick20.jpg',
      longImagePath:
          'https://m.media-amazon.com/images/M/MV5BZWYzOGEwNTgtNWU3NS00ZTQ0LWJkODUtMmVhMjIwMjA1ZmQwXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_.jpg',
      trailerPath: 'assests/movies/Monster 03 by TechBoyz.mp4',
      category: 'Comedy, Adventure, Fantasy',
      description:
          'After thirty years, Maverick is still pushing the envelope as a top naval aviator, but must confront ghosts of his past when he leads TOP GUN\'s elite graduates on a mission that demands the ultimate sacrifice from those chosen to fly it.',
      year: 2022,
      duration: Duration(hours: 2, minutes: 10),
    ),
    Movie(
      id: 5,
      title: 'The Man From Toronto',
      wideImagePath:
          'https://peachz.ca/wp-content/uploads/2022/08/the-man-from-toronto.jpeg',
      longImagePath:
          'https://m.media-amazon.com/images/M/MV5BNDE2ODVmNGMtOGI3Zi00ODNjLTg5ZmUtNzAxNjQ4M2FjNzlkXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg',
      trailerPath: 'assests/movies/Monster 03 by TechBoyz.mp4',
      category: 'Comedy, Adventure, Action',
      description:
          'The world\'s deadliest assassin and New York\'s biggest screw-up are mistaken for each other at an Airbnb rental.',
      year: 2022,
      duration: Duration(hours: 1, minutes: 50),
    ),
  ];
}
