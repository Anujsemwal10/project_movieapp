// import 'package:flutter/material.dart';
//
// class Search extends SearchDelegate<String>{
//   final List<String> names;
//   final String result;
//
//   Search(this.names, this.result);
//
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(onPressed: (){
//         query ="";
//       }, icon: Icon(Icons.clear))
//     ];
//   }
//
//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(onPressed: (){
//       close(context, result);
//     }, icon: Icon(Icons.arrow_back));
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     final suggestion = names.where((name) {
//       return name.toLowerCase().contains(query.toLowerCase());
//     });
//     return ListView.builder(
//         itemCount: suggestion.length,
//         itemBuilder: (BuildContext context, int index){
//           return ListTile(title: Text(suggestion.elementAt(index)),);
//         });
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     // TODO: implement buildSuggestions
//     throw UnimplementedError();
//   }
//
//
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final suggestion = names.where((name) {
//       return name.toLowerCase().contains(query.toLowerCase());
//     });
//     return ListView.builder(
//     itemCount: suggestion.length,
//     itemBuilder: (BuildContext context, int index){
//       return ListTile(title: Text(suggestion.elementAt(index)),);
//     });
//   }
// }
