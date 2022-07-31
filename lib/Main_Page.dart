import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterapp1/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutterapp1/Settings.dart';
import 'package:flutterapp1/Main-Page1.dart';

//enum NavBarItems{Trans,Stats,Accounts,Settings}
//abstract class NavigationBarItemsState {}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex=0;
 // int pageIndex=0;
 //  final StreamController<NavBarItems>_navaBarController=StreamController<NavBarItems>.broadcast();
 //  NavBarItems defaultItem=NavBarItems.Settings;
  // void pickItem (int i)
  // {
  //   switch(i)
  //   {
  //     case 0:
  //     _navaBarController.sink.add(NavBarItems.Settings);
  //     break;
  //     case 1:
  //       _navaBarController.sink.add(NavBarItems.Settings);
  //       break;
  //     case 2:
  //       _navaBarController.sink.add(NavBarItems.Settings);
  //       break;
  //     case 3:
  //       _navaBarController.sink.add(NavBarItems.Settings);
  //       break;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
         body: SWITCH(selectedIndex),

        bottomNavigationBar: FFNavigationBar(
          theme: FFNavigationBarTheme(
              barBackgroundColor: darkTheme?Colors.black26:Colors.white70,
              selectedItemBorderColor: Colors.blue,
              selectedItemBackgroundColor: Colors.white70,
              selectedItemIconColor: Colors.red,
              selectedItemLabelColor: darkTheme?Colors.white70:Colors.black,
              showSelectedItemShadow: true,
              barHeight: 60
          ),
          selectedIndex: selectedIndex,
          onSelectTab: (index) {
            SWITCH(selectedIndex);
            setState(() {
              selectedIndex = index;
              // StreamBuilder(
              //     // ignore: missing_return
              //     builder: (BuildContext context,AsyncSnapshot snapshot){
              //     switch(selectedIndex)
              //     {
              //       case 0:
              //         return Settings();
              //       break;
              //     }
              //     }
              // );
              // Builder(
              //     // ignore: missing_return
              //     builder: (context){
              //       switch(selectedIndex)
              //       {
              //         case 0:
              //           Settings();
              //         // default:
              //         //   return null;
              //       }
              //     });
            });

          },
          items: [
            FFNavigationBarItem(
              iconData: Icons.format_list_bulleted,
              label: 'Trans.',
            ),
            FFNavigationBarItem(
              iconData: Icons.insert_chart,
              label: 'Stats',
            ),
            FFNavigationBarItem(
              iconData: Icons.credit_card,
              label: 'Accounts',
            ),
            FFNavigationBarItem(
              iconData: Icons.settings,
              label: 'Settings',
            ),
          ],
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}


Widget SWITCH(int selector)
{

  switch(selector)
  {
    case 0:
   return APPBAR();
      break;
    // case 1:
    //   return   null;
    //   break;
    // case 2:
    //   return   null;
    //   break;
    case 3:
      return  Settings();
      break;

  }
}



