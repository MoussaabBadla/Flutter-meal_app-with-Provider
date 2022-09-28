import 'package:flutter/material.dart';

import '../models/category.dart';
import '../screens/category_meals_screen.dart';

class catrow extends StatelessWidget {
  final List<Category> Data;

  const catrow({
    Key? key,
    required this.Data,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: ListView.builder(
                      shrinkWrap: true,

          scrollDirection: Axis.horizontal,
          itemCount: Data.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () =>
                        Navigator.of(context).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        'id': Data[index].id,
        'title': Data[index].title,
      }
    )
,
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Data[index].color,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(87, 0, 0, 0),
                          blurRadius: 1.0,
                          spreadRadius: 0.0,
                          offset: Offset(
                              -2.0, 0), // shadow direction: bottom right
                        ),
                      ]),
                  child: Row(
                    children: [
                      Image.network(Data[index].Icon),
                      SizedBox(width: 5,),
                      Text(
                        Data[index].title,
                        style: TextStyle(color: Colors.white, fontSize: 12,fontFamily: 'RobotoCondensed-Regular'),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
        ));
  }
}
// ,