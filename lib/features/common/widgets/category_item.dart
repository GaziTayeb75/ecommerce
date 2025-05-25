import 'package:ecommerce/features/common/data/models/category_model.dart';
import 'package:ecommerce/features/products/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';

import '../../../app/app_colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          ProductListScreen.name,
          arguments: categoryModel.title,
        );
      },
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.symmetric(horizontal: 8),
            color: AppColors.themeColor.withOpacity(0.15),
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.network (
                categoryModel.icon,
                width: 48,
                height: 48,
              ),
            ),
          ),
           Text(
            categoryModel.title,
            style: const TextStyle(
              color: AppColors.themeColor,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
