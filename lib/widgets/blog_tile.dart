import 'package:flutter/material.dart';

class BlogTile extends StatelessWidget {
  const BlogTile(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.url})
      : super(key: key);

  final String imageUrl, title, description, url;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(imageUrl)),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
                fontSize: 17,
                color: Colors.black87,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
