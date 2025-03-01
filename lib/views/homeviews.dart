import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsy/models/artical_model.dart';
import 'package:newsy/services/news_service.dart';

import '../Widgets/catagry_list_view.dart';
import '../Widgets/news_list.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "News",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                " Cloud",
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CatagryListView(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              NewListviewBuilder()
            ],
          ),
        ));
  }
}

class NewListviewBuilder extends StatefulWidget {
  @override
  State<NewListviewBuilder> createState() => _NewListviewBuilderState();


}

class _NewListviewBuilderState extends State<NewListviewBuilder> {
  var futer;
 @override
  void initState() {
    super.initState();
   futer= NewsService(Dio()).getNews();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ArticleModel>>(
        future: futer,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return News(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: ErrorMasseg(),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
    
  }
}

class ErrorMasseg extends StatelessWidget {
  const ErrorMasseg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("oops errory");
  }
}
