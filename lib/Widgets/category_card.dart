import 'package:flutter/material.dart';
import 'package:newsy/models/catagory_model.dart';
import 'package:newsy/views/catagryview.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.catgry});
  final CatagoryModel catgry;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CatagryView();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage(catgry.imageAssetUrl)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
              child: Text(
            catgry.catagryName,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
