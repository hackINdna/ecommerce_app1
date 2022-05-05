import 'package:ecommerce_app1/Models/mealsMenu.dart';
import 'package:ecommerce_app1/dummy_data.dart';
import 'package:flutter/material.dart';

class CategoryMenu extends StatelessWidget {

  // final String? title;
  // final String? categoryId;
  // final Color? color;

  // CategoryMenu({ this.title,  this.categoryId,  this.color});

  @override
  Widget build(BuildContext context) {
    
    final data = ModalRoute.of(context)!.settings.arguments as Map;
    final title = data['title'];
    final color = data['color'];
    final id = data['id'];

    final categoryMeal = DUMMY_MEALS.where((meals){
      return meals.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
        backgroundColor: color,
      ),
      body: ListView.builder(
        itemCount: categoryMeal.length,
        itemBuilder: (context, index){
          return MealsMenu(id: categoryMeal[index].id, title: categoryMeal[index].title, imageUrl: categoryMeal[index].imageUrl, duration: categoryMeal[index].duration, complexity: categoryMeal[index].complexity, affordability: categoryMeal[index].affordability);
        },
      ),
    );
  }
}