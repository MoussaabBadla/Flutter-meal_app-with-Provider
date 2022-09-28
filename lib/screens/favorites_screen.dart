import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/providers/myprovider.dart';
import 'package:flutter_complete_guide/widgets/gridview.dart';
import 'package:provider/provider.dart';

import '../models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Meal> favoriteMeals =
        Provider.of<promeal>(context, listen: true).favoriteMeals;


    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return Mygrid(
        Stupid: favoriteMeals,
        itemcound: favoriteMeals.length,
      );
    }
  }
}
