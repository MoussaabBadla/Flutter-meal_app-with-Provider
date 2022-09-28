import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/gridview.dart';
import 'package:provider/provider.dart';

import '../providers/myprovider.dart';
import '../models/meal.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String? categoryTitle;
  List<Meal> displayedMeals = [];

  @override
  void didChangeDependencies() {
    final List<Meal> availableMeals =
        Provider.of<promeal>(context, listen: true).availableMeals;

    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    displayedMeals = availableMeals.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            categoryTitle!,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        body: Mygrid(
          Stupid: displayedMeals,
          itemcound: displayedMeals.length,
        ));
  }
}
