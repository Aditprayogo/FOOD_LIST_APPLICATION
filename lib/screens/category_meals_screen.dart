import 'package:flutter/material.dart';
import 'package:three_app/models/meal.dart';

import '../widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meal';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<Meal> displayedMeal;
  var _loadedInitData = false;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (_loadedInitData == false) {
      final stringArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;

      categoryTitle = stringArgs['title'];
      final categoryId = stringArgs['id'];

      displayedMeal = DUMMY_MEALS.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }

    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeal.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    //menangkap argument dari categires screen
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: displayedMeal[index].id,
            title: displayedMeal[index].title,
            imageUrl: displayedMeal[index].imageUrl,
            duration: displayedMeal[index].duration,
            affordability: displayedMeal[index].affordability,
            complexity: displayedMeal[index].complexity,
            removeItem: _removeMeal,
          );
        },
        itemCount: displayedMeal.length,
      ),
    );
  }
}
