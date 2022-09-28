import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/gridview.dart';
import 'package:provider/provider.dart';

import '../models/meal.dart';
import '../providers/myprovider.dart';

class newmeals extends StatelessWidget {
  const newmeals({Key? key}) : super(key: key);
  static const routname = '/new';

  @override
  Widget build(BuildContext context) {
        final List<Meal> availableMeals =
        Provider.of<promeal>(context, listen: true).availableMeals;

    return Scaffold(
      
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'All Meals',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: 
      SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text('Our Meals !  ',style: Theme.of(context).textTheme.subtitle1,),
          ),
          Mygrid(Stupid:availableMeals ,itemcound:availableMeals.length ),
        ],
      ))
      
    
    );
  }
}
