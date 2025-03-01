// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:newsy/Widgets/new_tile.dart';
// import 'package:newsy/models/artical_model.dart';
// import 'package:newsy/services/news_service.dart';

// class News extends StatefulWidget {
//   const News({
//     super.key,
//   });

//   @override
//   State<News> createState() => _NewsState();
// }

// class _NewsState extends State<News> {
//   List<ArticleModel> articles = [];

//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGenralNew();
//   }

//   Future<void> getGenralNew() async {
//     articles = await NewsService(Dio()).getNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading ? SliverToBoxAdapter(
//       child: Center(child: CircularProgressIndicator()))
//       :SliverList(
//         delegate: SliverChildBuilderDelegate(
//       childCount: articles.length,
//       (context, index) {
//         return NewTile(
//           articleModel: articles[index],
//         );
//       },
//     ));
//   }
// }
