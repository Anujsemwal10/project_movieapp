import 'dart:convert';
import 'package:project_movieapp/moviespages/movie.dart';
import 'package:project_movieapp/moviespages/moviesWidget.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:project_movieapp/searchpage/searchwidget.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  List<Movie> _movies = <Movie>[];

  // List<Movie> _movies = new List<Movie>();
  //
  @override
  void initState() {
    super.initState();
    _populateAllMovies();
  }

  void _populateAllMovies() async {
    final movies = await _fetchAllMovies();
    setState(() {
      _movies = movies;
    });
  }


  Future<List<Movie>> _fetchAllMovies() async {
    final response = await http.get(Uri.parse('https://api.themoviedb.org/3/movie/upcoming?api_key=b7bf3ff61f1ae0cc9b3aa95d8b62076a'));

    if(response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["results"];
      return list.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("Failed to load movies!");
    }

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepOrangeAccent,
              title: Center(child:Text("Movies"),),
              actions:<Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: ()  {
                    // final result = await showSearch<String>(
                    //   context: context,
                    //   delegate: Search(),
                    // );
                  },
                ),
              ],
            ),
            body: MoviesWidget(movies: _movies)
    );

  }

}
