import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsy/Widgets/new_tile.dart';
import 'package:newsy/models/artical_model.dart';
import 'package:newsy/services/news_service.dart';

class News extends StatelessWidget {
  final List<ArticleModel> articles;

  News({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return NewTile(
          articleModel: articles[index],
        );
      },
    ));
  }
}
