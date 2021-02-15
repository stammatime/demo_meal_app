import 'package:flutter/material.dart';

import 'dummy_data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('$screenWidth')),
      body: Padding(
        padding: screenWidth >= 800
            ? EdgeInsets.symmetric(horizontal: screenWidth * .2)
            : EdgeInsets.symmetric(horizontal: 25),
        child: GridView(
          padding: EdgeInsets.symmetric(vertical: 25),
          children: DUMMY_CATEGORIES.map((category) {
            return CategoryItem(category.id, category.title, category.color);
          }).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio:
                  3 / 2), // for each width, the height will be 1.5(3/2) of that
        ),
      ),
    );
  }
}
