import 'package:flutter/material.dart';

import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final imageurl;

  CategoryItem(this.id, this.title, this.color, this.imageurl);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 15,
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          Container(
                                      height: 150,
            width: 140,


            child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),

              child: Image(
            
                
                fit: BoxFit.cover,
                image: NetworkImage(
                  imageurl,
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            width: 140,
            padding: const EdgeInsets.only(top: 60,left: 15),
            child: Container(
              child: Text(
                title,
                style: TextStyle( color: Colors.white,fontFamily: 'Raleway',fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.start,
              ),
            ),
            decoration: BoxDecoration(
              gradient:LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(0.5),
                        Color(0xFF9e2a2b).withOpacity(0.1),
                        Color(0xFF9e2a2b).withOpacity(0.8),
                      ],
                      stops: [
                        0,
                        0.2,
                        1
                      ]),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ],
      ),
    );
  }
}
