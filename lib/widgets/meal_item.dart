import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';

import '../screens/meal_detail_screen.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final String myimage ;

  MealItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.affordability,
    required this.complexity,
    required this.duration, required this.myimage,
  });

  @override
  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'Unknown';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Expensive';
        break;
      default:
        return 'Unknown';
    }
  }

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(
      MealDetailScreen.routeName,
      arguments: {
        'id': id,
        'affordability': affordabilityText,
        'complexity':complexityText,

      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 10,
        
        margin: EdgeInsets.all(10),
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              width: 153,
              height: 255,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(0.5),
                        Color(0xFF9e2a2b).withOpacity(0.1),
                        Color(0xFF9e2a2b),
                      ],
                      stops: [
                        0,
                        0.2,
                        1
                      ])),
              padding: EdgeInsets.only(
                top: 160,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 140,
                      height: 45,
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        
                        title,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          
                            color: Colors.white,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(children: [
                        Icon(
                          FontAwesome.dollar,
                          size: 15,
                          color: Colors.white,
                        ),
                        Text(
                          affordabilityText,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                      Row(children: [
                        Icon(
                          RpgAwesome.stopwatch,
                          size: 16,
                          color: Colors.white,
                        ),
                        Text(' ${duration} min ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.bold)),
                      ])
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(197, 0, 0, 0),
                    blurRadius: 30.0,
                    spreadRadius: -10,
                    offset: Offset(-15, 15.0), 
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Hero(
                  tag: id,
                  child: Image.network(
                  myimage ,
                    height: 144,
                    width: 147,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
