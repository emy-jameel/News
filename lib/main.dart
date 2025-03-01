import 'package:flutter/material.dart';
import 'package:newsy/services/news_service.dart';
import 'package:newsy/views/homeviews.dart';
import 'package:dio/dio.dart';

void main() {
  NewsService(Dio()).getNews();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeViews(),
    );
  }
}
