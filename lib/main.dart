import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_complete_guide/providers/myprovider.dart';
import 'package:flutter_complete_guide/screens/categories.dart';
import 'package:flutter_complete_guide/screens/allmeals.dart';
import 'package:flutter_complete_guide/screens/on_boarding_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './screens/tabs_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/filters_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences ref = await SharedPreferences.getInstance();
  Widget homescreen =
      ref.getBool('watched') ?? false ? TabsScreen() : OnBoardingScreen();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<promeal>(create: (context) => promeal()),
      ],
      child: MyApp(
        homescreen: homescreen
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final Widget homescreen;
  MyApp({required this.homescreen});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
    
      theme: ThemeData(
        canvasColor: Colors.white,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              subtitle1: TextStyle(
                fontSize: 16,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      
      initialRoute: 'coco',
      routes: {
        
        'coco': (context) => homescreen,
        TabsScreen.routaname: (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
        catscreen.routname: (context) => catscreen(),
        newmeals.routname: (context) => newmeals()
      },
    );
  }
}
