import 'package:flutter/material.dart';
import 'package:ecommerce_app1/dummy_data.dart';
import 'package:ecommerce_app1/categoryItem.dart';

class CategoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('eShop'),
        centerTitle: true,
      ),
      body: GridView(
        padding: const EdgeInsets.fromLTRB(10, 10.0,10,0),
        children: DUMMY_CATEGORIES.map((c) => CatItem(title: c.title, color: c.color, id: c.id)).toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}