import 'package:flutter/material.dart';
import 'package:flutterapp1/GetData.dart';
import 'package:flutterapp1/Main_Page.dart';
import 'package:flutterapp1/Settings.dart';
import 'package:flutterapp1/Configuration.dart';
import 'package:dynamic_theme/dynamic_theme.dart';


bool darkTheme=false;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => ThemeData(
          primarySwatch: Colors.blueGrey,
          brightness: brightness,
        ),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'AP Money Manager',
              theme: theme ,
             // home:MyHomePage()
            home: MyHomePage(),
          );
        });

  }

}





