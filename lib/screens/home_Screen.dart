import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/category.dart';
import 'package:flutter_complete_guide/screens/categories.dart';
import 'package:flutter_complete_guide/screens/allmeals.dart';
import 'package:flutter_complete_guide/widgets/categories_row.dart';
import 'package:flutter_complete_guide/widgets/gridview.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:provider/provider.dart';

import '../models/meal.dart';
import '../providers/myprovider.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Row textrow(BuildContext context, String route, String title) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () => Navigator.of(context).pushNamed(route),
                  child: Text(
                    'All',
                    style: TextStyle(color: Colors.black),
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  FontAwesome5.arrow_right,
                  size: 10,
                  color: Color(0xFFe5383b),
                ),
              )
            ],
          )
        ],
      );
    }

    final List<Meal> availableMeals =
        Provider.of<promeal>(context, listen: true).availableMeals;
    final List<Category> availablecar =
        Provider.of<promeal>(context, listen: true).availablecategories;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: null,
        body: SingleChildScrollView(
          child: Column(children: [
            textrow(context, catscreen.routname, 'Categories'),
            catrow(Data: availablecar),
            textrow(context, newmeals.routname, 'New Meals'),
            Mygrid(
                Stupid: availableMeals,
                itemcound: (availableMeals.length ~/ 4) + 1)
          ]),
        ),
      ),
    );
  }
}
