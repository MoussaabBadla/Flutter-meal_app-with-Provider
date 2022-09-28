import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/category.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../dummy_data.dart';
import '../models/meal.dart';
/*noFish: true,
    noSoy: true,
    noegg: true,
    noWheat: true,
    nomilk: true,*/
class promeal extends ChangeNotifier {
  List<String> prefsid = [];

  Map<String, bool?> filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
    'egg':false,
    'milk':false,
    'fish':false,
    'soy':false,
    'wheat':false
  };
  List<Meal> availableMeals = DUMMY_MEALS;
  List<Category> availablecategories = DUMMY_CATEGORIES;
  List<Meal> favoriteMeals = [];

  void getdate() async {
    SharedPreferences ref = await SharedPreferences.getInstance();
    filters['gluten'] = ref.getBool('gluten') ?? false;
    filters['lactose'] = ref.getBool('lactose') ?? false;

    filters['vegan'] = ref.getBool('vegan') ?? false;

    filters['vegetarian'] = ref.getBool('vegetarian') ?? false;
    filters['egg'] = ref.getBool('egg')?? false;
    filters['milk'] = ref.getBool('milk')?? false;
    filters['fish'] = ref.getBool('fish')?? false;
    filters['soy'] = ref.getBool('soy')?? false;
    filters['wheat'] = ref.getBool('wheat')?? false;
    prefsid = ref.getStringList('favorite') ?? [];
    if (prefsid != []) {
      for (var element in prefsid) {
        final existingIndex =
            favoriteMeals.indexWhere((meal) => meal.id == element);
        if (existingIndex < 0) {
          favoriteMeals
              .add(DUMMY_MEALS.firstWhere((meal) => meal.id == element));
        }
      }
    }
    notifyListeners();
  }

  void setFilters() async {
    SharedPreferences ref = await SharedPreferences.getInstance();
    ref.setBool('gluten', filters['gluten']!);
    ref.setBool('lactose', filters['lactose']!);

    ref.setBool('vegan', filters['vegan']!);

    ref.setBool('vegetarian', filters['vegetarian']!);
    ref.setBool('egg', filters['egg']!);
    ref.setBool('milk', filters['milk']!);
    ref.setBool('fish', filters['fish']!);
    ref.setBool('soy', filters['soy']!);   
    ref.setBool('wheat', filters['wheat']!);



    availableMeals = DUMMY_MEALS.where((meal) {
      if (filters['gluten']! && !meal.isGlutenFree) {
        return false;
      }
      if (filters['lactose']! && !meal.isLactoseFree) {
        return false;
      }
      if (filters['vegan']! && !meal.isVegan) {
        return false;
      }
      if (filters['vegetarian']! && !meal.isVegetarian) {
        return false;
      }
      if (filters['egg']! && !meal.noegg) {
        return false;
      }
      if (filters['milk']! && !meal.nomilk) {
        return false;
      }
      if (filters['fish']! && !meal.noFish) {
        return false;
      }
      if (filters['soy']! && !meal.noSoy) {
        return false;
      }
      if (filters['gluten']! && !meal.isGlutenFree) {
        return false;
      }
      return true;
    }).toList();
    availablecategories = DUMMY_CATEGORIES.where((element) {
      for (var cat in availableMeals) {
        if (cat.categories.contains(element.id)) {
          return true;
        }
      }
      return false;
    }).toList();
    notifyListeners();
  }

  void toggleFavorite(String mealId) async {
    SharedPreferences ref = await SharedPreferences.getInstance();

    final existingIndex = favoriteMeals.indexWhere((meal) => meal.id == mealId);
    if (existingIndex >= 0) {
      favoriteMeals.removeAt(existingIndex);
      prefsid.remove(mealId);
    } else {
      favoriteMeals.add(DUMMY_MEALS.firstWhere((meal) => meal.id == mealId));
      prefsid.add(mealId);
    }

    notifyListeners();

    ref.setStringList('favorite', prefsid);
  }
}
