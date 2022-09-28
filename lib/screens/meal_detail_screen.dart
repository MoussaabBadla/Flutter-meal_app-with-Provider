import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/providers/myprovider.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import 'package:provider/provider.dart';

import '../dummy_data.dart';

class MealDetailScreen extends StatefulWidget {
  static const routeName = '/mealdetail';

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  final _controller = PageController(initialPage: 0);
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoCondensed',
            color: Colors.black),
      ),
    );
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final mealId = routeArgs['id'];
    final afrd = routeArgs['affordability'];
    final comp = routeArgs['complexity'];
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          bottom: PreferredSize(
            child: Container(),
            preferredSize: Size(0, 20),
          ),
          actions: [
            IconButton(
              onPressed: () =>
                  Provider.of<promeal>(context, listen: false).toggleFavorite(
                mealId!,
              ),
              icon: Icon(
                color: Colors.redAccent,
                Provider.of<promeal>(context, listen: true)
                        .favoriteMeals
                        .any((meal) => meal.id == mealId)
                    ? FontAwesome.heart
                    : FontAwesome.heart_empty,
              ),
            )
          ],
          iconTheme: IconThemeData(color: Colors.black, size: 30),
          backgroundColor: Colors.white,
          elevation: 0,
          expandedHeight: 300,
          pinned: false,
          flexibleSpace: Stack(children: [
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: Hero(
                tag: mealId!,
                child: FadeInImage(
                  placeholder: AssetImage('images/Sbaghetti.png'),
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    selectedMeal.imageUrl,
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(70),
                  ),
                ),
              ),
              bottom: -1,
              left: 0,
              right: 0,
            ),
          ]),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Card(
                elevation: 0,
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child:
                            buildSectionTitle(context, '${selectedMeal.title}'),
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        color: Color(0xFFF4F4F4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            rowmethod(afrd, FontAwesome.dollar),
                            rowmethod(comp, FontAwesome.magic),
                            rowmethod(' ${selectedMeal.duration} min ',
                                RpgAwesome.stopwatch)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            index('Ingredients', 0),
                            Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: index('Steps', 1))
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF4F4F4),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black)),
                        height: 600,
                        width: 300,
                        child: PageView(
                          onPageChanged: ((value) {
                            setState(() {
                              _currentIndex = value;
                            });
                          }),
                          controller: _controller,
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (ctx, index) => Column(
                                children: [
                                  ListTile(
                                      title: Text(
                                    selectedMeal.ingredients[index],
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                                  Divider()
                                ],
                              ),
                              itemCount: selectedMeal.ingredients.length,
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (ctx, index) => Column(
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor:
                                          Color.fromARGB(197, 227, 52, 8),
                                      child: Text(
                                        '${(index + 1)}',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    title: Text(
                                      selectedMeal.steps[index],
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Divider()
                                ],
                              ),
                              itemCount: selectedMeal.steps.length,
                            ),
                          ],
                        ),
                      )
                    ]),
              )
            ],
          ),
        )
      ]),
    );
  }

  InkWell index(String str, int ind) {
    return InkWell(
      onTap: (() => _controller.animateToPage(ind,
          duration: Duration(milliseconds: 350), curve: Curves.easeInCubic)),
      child: Column(
        children: [
          Text(str,
              style: TextStyle(
                color: _currentIndex == ind ? Colors.red : Colors.black,
                fontSize: 16,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 400),
              height: _currentIndex == ind ? 5 : 1,
              width: _currentIndex == ind ? 48 : 40,
              decoration: BoxDecoration(
                  color: _currentIndex == ind ? Colors.red : Colors.white,
                  borderRadius: BorderRadius.circular(20)),
            ),
          )
        ],
      ),
    );
  }

  Text textmethod(String abc) {
    return Text(
      abc,
      style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold),
    );
  }

  Row rowmethod(String? afrd, IconData Grt) {
    return Row(children: [
      Icon(
        Grt,
        size: 20,
        color: Colors.black,
      ),
      Text(
        afrd!,
        style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold),
      )
    ]);
  }
}
