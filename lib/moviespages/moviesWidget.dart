import 'package:flutter/material.dart';
import 'package:project_movieapp/aboutpage/decription.dart';
import 'package:project_movieapp/moviespages/movie.dart';

class MoviesWidget extends StatelessWidget {

  final List<Movie> movies;

  MoviesWidget({required this.movies});

  @override
  Widget build(BuildContext context) {

    return ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Colors.black54,),
        itemCount: movies.length,
        itemBuilder: (context, index) {

          final movie = movies[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Description(
                          title: movie.title,
                        poster: movie.poster,
                          date: movie.date,
                        overview: movie.view, vote_average: movie.rate,
                      )));
            },
            child: ListTile(
                title: Row(children: [
                  SizedBox(
                      width: 50,
                      height: 50,
                      child: ClipRRect(
                        child: Image.network(movie.poster ,fit: BoxFit.cover,),
                        borderRadius: BorderRadius.circular(50),
                      )

                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(movie.title),
                          Text(movie.date,style: TextStyle(color: Colors.black54),)
                        ],),
                    ),
                  )
                ],)
            ),
          );
        }
    );

  }

}