import 'package:flutter/material.dart';
import 'main.dart';

Widget titleHeader(String title) {
  return (
      Container(padding: EdgeInsets.only(left: 17, bottom: 5),
        child: Text(title, style: TextStyle(color: darkTheme?Colors.white:Colors.black54,),),
        //color: Colors.black12,
          color: darkTheme?Colors.black12:Colors.black12,
        height: 42,
        alignment: Alignment.bottomLeft));
}



