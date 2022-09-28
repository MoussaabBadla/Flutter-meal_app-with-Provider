import 'package:animations/animations.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/providers/myprovider.dart';
import 'package:flutter_complete_guide/screens/SearchScreen.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:provider/provider.dart';

import './favorites_screen.dart';
import 'home_Screen.dart';
import 'filters_screen.dart';

class TabsScreen extends StatefulWidget {
  static const routaname = '/oa';

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages = [];
  int _selectedPageIndex = 0;

  @override
  void initState() {
    Provider.of<promeal>(context, listen: false).getdate();
        Provider.of<promeal>(context, listen: false).setFilters();


    _pages = [
      {
        'page': CategoriesScreen(),
        'title': 'Home',
      },
      {
        'page': FavoritesScreen(),
        'title': 'Your Favorite',
      },
      {
        'page': SearchScreen(),
        'title': 'Find',
      },
      {'page': FiltersScreen(), 'title': 'Filtters'}
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedPageIndex == 2
          ? null
          : AppBar(
            leading: Icon(Icons.menu
            ),
              iconTheme: IconThemeData(color: Colors.black),
              elevation: 0,
              backgroundColor: Colors.white,
              title: Text(
                _pages[_selectedPageIndex]['title'].toString(),
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
      body: PageTransitionSwitcher(
        duration: Duration(milliseconds: 300),
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: Offset.zero,
              end: const Offset(-1, 0.0),
            ).animate(secondaryAnimation),
            child: FadeTransition(
              opacity: Tween<double>(
                begin: 0.0,
                end: 1.0,
              ).animate(primaryAnimation),
              child: child,
            ),
          );
        },
        child: _pages[_selectedPageIndex]['page'] as Widget,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 300),
        animationCurve: Curves.easeInCubic,
        onTap: _selectPage,
        color: Colors.white,
        backgroundColor: Color(0xFFe5383b),
        height: 45,
        index: _selectedPageIndex,
        items: [
          Icon(Icons.home, size: 25),
          Icon(FontAwesome5.heart, size: 25),
          Icon(FontAwesome.search, size: 25),
          Icon(FontAwesome5.filter, size: 25),
        ],
      ),
    );
  }
}
