import 'package:flutter/material.dart';

import '../models/meal.dart';
import 'meal_item.dart';

class Mygrid extends StatelessWidget {
  final List<Meal> Stupid;
  final int itemcound;
  const Mygrid({Key? key, required this.Stupid, required this.itemcound})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _screenWidth = MediaQuery.of(context).size.width;
    var _width = _screenWidth < 700
        ? (_screenWidth - 325) / 2
        : (_screenWidth - 715) / 4;

    var _aspectRatio = _screenWidth < 700 ? _width / 60 : _width / 32;

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      primary: false,
      padding: const EdgeInsets.all(25),
      itemCount: itemcound,
      itemBuilder: (context, index) {
        return MealItem(
          title: Stupid[index].title,
          id: Stupid[index].id,
          imageUrl: Stupid[index].imageUrl,
          affordability: Stupid[index].affordability,
          complexity: Stupid[index].complexity,
          duration: Stupid[index].duration,
          myimage: Stupid[index].imageUrl2,
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _screenWidth < 500 ? 2 : 4,
        childAspectRatio: _aspectRatio,
        crossAxisSpacing: 40,
      ),
    );
  }
}
