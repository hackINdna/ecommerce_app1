import 'package:flutter/material.dart';
import 'package:ecommerce_app1/categoryMenu.dart';

class CatItem extends StatelessWidget {

  final String title;
  final Color color;
  final String? id;

  const CatItem({ required this.title, required this.color, this.id});
  static const String routename = '/categoryMenuScreen';

  // void changeScreen(context)
  // {
  //   Navigator.of(context).push(MaterialPageRoute(
  //     builder: (context) => CategoryMenu(title: title, categoryId: id!, color: color,)
  //   ));
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, routename, arguments: {
          'title': title,
          'color': color,
          'id': id
        });
      },
      child: Container(
        child: Center(child: Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}