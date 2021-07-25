import 'package:flutter/material.dart';
// import 'package:project_movieapp/movie.dart';
class Description extends StatelessWidget {
  final String  overview, poster, title, date;
  final double vote_average;

  const Description({Key? key, required this.overview, required this.vote_average, required this.poster, required this.title, required this.date, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("it: Chapter Two"),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(children: [
          Container(
              height: 250,
              child: Stack(children: [
                Positioned(
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width ,
                    child: Image.network(
                      poster,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ])),
          SizedBox(height: 20),

          Container(
              padding: EdgeInsets.only(left: 10),
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(overview,style: TextStyle(color: Colors.black),)),
          )
        ]),
      ),
    );
  }
}







