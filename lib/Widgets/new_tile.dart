import 'package:flutter/material.dart';
import 'package:newsy/models/artical_model.dart';

class NewTile extends StatelessWidget {
  const NewTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
         Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 8,
        ),
         Text(
         articleModel.Subtitle!,
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
