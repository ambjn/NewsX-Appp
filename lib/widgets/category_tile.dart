import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({Key? key, this.imageUrl, this.categoryName})
      : super(key: key);

  final imageUrl, categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: CachedNetworkImage(
            height: 60,
            width: 120,
            fit: BoxFit.cover,
            imageUrl: imageUrl,
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.black26,
          ),
          height: 60,
          width: 120,
          child: Text(
            categoryName,
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
          ),
        )
      ]),
    );
  }
}
