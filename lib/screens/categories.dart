import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/category.dart';
import '../providers/myprovider.dart';
import '../widgets/category_item.dart';

class catscreen extends StatelessWidget {
  const catscreen({Key? key}) : super(key: key);
  static const routname = '/cat';

  @override
  Widget build(BuildContext context) {
    final List<Category> availablecar =
Provider.of<promeal>(context, listen: true).availablecategories;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Categories',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: GridView(
      padding: const EdgeInsets.all(25),
      children: availablecar
          .map(
            (catData) => CategoryItem(
                  catData.id,
                  catData.title,
                  catData.color,
                  catData.Image
                ),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    ));
  }
}
