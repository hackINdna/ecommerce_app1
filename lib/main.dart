import 'package:ecommerce_app1/categoryMenu.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app1/category_screen.dart';
import 'package:ecommerce_app1/categoryItem.dart';
import 'package:ecommerce_app1/Models/mealsPage.dart';



void main() => runApp(AppInfo());

class AppInfo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcomApp',
      theme: ThemeData(
        primaryColor: Colors.orange,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange[700],
        ),
        backgroundColor: Colors.white,
        // textTheme: ThemeData.light().textTheme.copyWith(
        //   bodyText1: TextStyle(
        //     color: Colors.red,
        //   ),
        //   bodyText2: TextStyle(
        //     color: Colors.blue,
        //   ),
        // ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.red,
          ),
          bodyText2: TextStyle(
            color: Colors.black,
          ),
        ),

      ),
      // home: CategoryScreen(),
      routes: {
        '/': (context) => CategoryScreen(),
        CatItem.routename: (context) => CategoryMenu(),
        MealsPage.routename: (context) => MealsPage(),
      },
    );
  }
}

