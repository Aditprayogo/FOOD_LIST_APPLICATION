import 'package:flutter/material.dart';

import './dummy_data.dart';

import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal App'),
        backgroundColor: Colors.amberAccent,
      ),
      body: GridView(
        padding: EdgeInsets.all(30),
        children: DUMMY_CATEGORIES.map((categoryData) {
          return CategoryItem(
            categoryData.title,
            categoryData.color,
          );
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
