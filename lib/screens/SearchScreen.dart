import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/gridview.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:provider/provider.dart';

import '../providers/myprovider.dart';
import 'on_boarding_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final controller = TextEditingController();
  String text = '';

  Widget Searchlogic(String text) {
    if (text == '') {
      return Center(
        child:                         
   
         Icon(Icons.search,size: 100,color: Color(0xFF9e2a2b).withOpacity(0.4)),

      );
    }
    final resultmeal = Provider.of<promeal>(context, listen: true)
        .availableMeals
        .where((element) {
      return element.title
          .toLowerCase()
          .trim()
          .contains(text.toLowerCase().trim());
    }).toList();
    if (resultmeal.isNotEmpty) {
      return Mygrid(Stupid: resultmeal, itemcound: resultmeal.length);
    }
    return Center(
      child: Stack( 
        children :  [  

         Icon(Fontelico.emo_unhappy,size: 100,color: Color(0xFF9e2a2b).withOpacity(0.4)),

                 Container(
                  margin: EdgeInsets.only(top: 105),
                  child: Text('There is No result',style: TextStyle(color : Color(0xFF9e2a2b) , fontSize: 12,fontWeight: FontWeight.bold),))
                 
                 
                 ]),

        
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Container(
            width: double.infinity,
                child: TextField(
              controller: controller,
              style: TextStyle(
                  color: Color(0xFF686F82),
                  fontSize: 15,
                  fontFamily: 'RobotoCondensed-Regular'),
              decoration: InputDecoration(
                focusColor: Color(0xFF9e2a2b),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF9e2a2b))),
                isDense: true,
                
                prefixIcon: Icon(Icons.search,size: 25,color: Color(0xFF9e2a2b),),
                label: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Find a recipe',
                    style: TextStyle(
                        color: Color(
                          0xFF9e2a2b,
                        ),
                        fontSize: 15,
                        fontFamily: 'RobotoCondensed-Regular'),
                  ),
                ),
                floatingLabelStyle: TextStyle(color: Color(0xFF9e2a2b)),
                hintStyle: TextStyle(color: Color(0xFF686F82)),
              ),
              onChanged: ((value) {
                setState(() {
                  text = value;
                });
              }),
            ),
          ),
        ),
        body: 
                Searchlogic(text,));
  }
}
