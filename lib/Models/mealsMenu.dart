import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app1/Models/meals.dart';
import 'package:ecommerce_app1/dummy_data.dart';
import 'package:ecommerce_app1/Models/mealsPage.dart';



class MealsMenu extends StatelessWidget {

  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealsMenu({required this.id, required this.title, required this.imageUrl, required this.duration, required this.complexity, required this.affordability});

  String get complexityText {
    if(complexity == Complexity.Simple){
      return 'Simple';
    }
    else if(complexity == Complexity.Challenging){
      return 'Challenging';
    }
    else{
      return 'Hard';
    }
  }

  String get affordabilityText{
    if(affordability == Affordability.Affordable){
      return 'Affordable';
    }
    else if(affordability == Affordability.Pricey){
      return 'Pricey';
    }
    else{
      return 'Luxurious';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, MealsPage.routename, arguments: {
          'id': id
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4.0,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(imageUrl, height: 250, width: double.infinity, fit: BoxFit.cover,),
                ),
                Positioned(
                  bottom: 20.0,
                  right: 10.0,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20.0),
                    width: 330.0,
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.schedule,
                      color: Colors.grey[600],),
                      const SizedBox(width: 5.0),
                      Text(
                        '$duration min',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[600],
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.work,
                      color: Colors.grey[600],),
                      const SizedBox(width: 5.0),
                      Text(
                        complexityText,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey[600],
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.attach_money,
                      color: Colors.grey[600],),
                      const SizedBox(width: 5.0),
                      Text(
                        affordabilityText,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey[600],
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}