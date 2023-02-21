import 'package:flutter/material.dart';

class MateriCard extends StatelessWidget {
  const MateriCard({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                width: 50.0,
                height: 50.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(name),
        ],
      ),
    );
  }
}
