import 'package:flutter/material.dart';

import 'main.dart';


class FeedBack extends StatefulWidget {
  @override
  _FeedbackState createState() => _FeedbackState();
}

class _FeedbackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NotificationListener<OverscrollIndicatorNotification>(
        // ignore: missing_return
        onNotification: (overScroll) {
      overScroll.disallowGlow();
    },
     child: Column(
       children: [
         Container(
           height: 23,
           color: darkTheme?Colors.black45:Colors.blueGrey,
         ),
         Container(
           child: Row(
             children: [
               Container(
                 child: IconButton(
                   icon: Icon(
                     Icons.arrow_back,
                     size: 24,
                     color: Colors.white,
                   ),
                   onPressed: () {
                     Navigator.pop(context);
                   },
                 ),
               ),
               Text(
                 'Production',
                 style: TextStyle(color: Colors.white, fontSize: 16),
               ),
             ],
           ),
           height: 50,
           color: darkTheme?Colors.black45:Colors.blueGrey,
           alignment: Alignment.centerLeft,
         ),
         Container(
           height: 2,
           color: darkTheme?Colors.black54:Colors.black12,
         ),
         Divider(
           height: 0.5,
           color: Colors.black54,
         ),
         Expanded(
           child: ListView(
             padding: EdgeInsets.all(0),
             children: [
               Card(
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                 margin: EdgeInsets.all(0),
                 child: Container(
                   color: darkTheme?Colors.black45:Colors.white70,
                   padding: EdgeInsets.only(left: 15, top: 13),
                   child: Text('Realbyte Inc.'),
                   height: 35,
                   alignment: Alignment.centerLeft,
                 ),
                 elevation: 0,
               ),
               Card(
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                 margin: EdgeInsets.all(0),
                 child:Flexible(
                   child: Container(
                     color: darkTheme?Colors.black45:Colors.white70,
                     padding: EdgeInsets.only(left: 15, top: 13,bottom: 15),
                     child:Text(
                       'Email: help@realbyteapps.com '
                           'Site:http://realbyteapps.com',
                       style: TextStyle(fontSize: 13.5),
                       maxLines: 2,
                       softWrap: true,
                       overflow: TextOverflow.fade,
                     ),
                     height: 65,
                     alignment: Alignment.centerLeft,
                   ),),

                 elevation: 0,
               ),
             ],
           ),
         )
       ],
     ),
        )
    );
  }
}
