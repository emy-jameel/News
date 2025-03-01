import 'package:flutter/material.dart';
import 'package:newsy/Widgets/category_card.dart';

import '../models/catagory_model.dart';

class CatagryListView extends StatelessWidget {
   CatagryListView({
    
    super.key,
  });
  final List<CatagoryModel> categries = [
    CatagoryModel(imageAssetUrl: "assets/technology.jpeg", catagryName: "Sport"),
    CatagoryModel(imageAssetUrl: "assets/technology.jpeg", catagryName: "Techology")
,    CatagoryModel(imageAssetUrl: "assets/technology.jpeg", catagryName: "Sinec")
,    CatagoryModel(imageAssetUrl: "assets/technology.jpeg", catagryName: "News")
,    CatagoryModel(imageAssetUrl: "assets/technology.jpeg", catagryName: "Sport")

  ];
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categries.length,
        itemBuilder: (context, index) {
          return  CategoryCard(
            catgry: categries[index],
          );
        },
      ),
    );
  }
}
