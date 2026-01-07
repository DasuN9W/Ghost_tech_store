import 'package:flutter/material.dart';
import '../models/category_item.dart';

class CategoryCard extends StatelessWidget {
  final CategoryItem item;
  final VoidCallback? onTap;

  const CategoryCard({super.key, required this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                item.imagePath,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey.shade800,
                    child: const Icon(
                      Icons.image_not_supported,
                      size: 40,
                      color: Colors.white54,
                    ),
                  );
                },
              ),
            ),
          ),
        ),

        const SizedBox(height: 6),

        Text(item.name, style: const TextStyle(fontWeight: FontWeight.w600)),
      ],
    );
  }
}
