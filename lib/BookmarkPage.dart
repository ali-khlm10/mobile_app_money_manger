import 'package:flutter/material.dart';

import 'main.dart';


class BookMarkPage extends StatefulWidget {
  @override
  _BookMarkPageState createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<BookMarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 23,
            color: darkTheme ? Colors.black45 : Colors.blueGrey,
          ),
          Container(
            height: 50,
            color: darkTheme?Colors.black12:Colors.blueGrey,
            child: Row(
              children: [
                Container(
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 24,
                      color: darkTheme?Colors.white:Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Text(
                  'Bookmarks',
                  style: TextStyle(color: darkTheme?Colors.white:Colors.white,
                      fontSize: 16),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              children: [

              ],
            ),
          )
        ],
      ),
    );
  }
}
