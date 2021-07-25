class Movie {
  final int imdbId;
  final String poster;
  final String title;
  final String date;
  final String view;
  final double rate;

  Movie( {required this.imdbId, required this.title, required this.poster, required this.date,required this.view, required this.rate,});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        imdbId: json["id"],
        poster: "https://image.tmdb.org/t/p/w500/"+ json["poster_path"],
        title: json["title"],
        date: json["release_date"],
        rate: json["vote_average"],
        view: json["overview"],
    );
  }

}