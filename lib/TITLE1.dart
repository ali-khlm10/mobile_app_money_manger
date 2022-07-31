import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

Widget title(String title1, String title2, Widget title3) {
  return Card(
    margin: EdgeInsets.all(0),
    child: RaisedButton(
        elevation: 0,
        highlightColor: Colors.white70,
        padding: EdgeInsets.all(15),
        onPressed: () {},
        color: darkTheme?Colors.black45:Colors.white70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: Text(title1),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  title2 != null
                      ? Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            title2,
                            style: TextStyle(color: Colors.red, fontSize: 13),
                          ),
                        )
                      : Container(),
                  title3==null?Container():title3
                ],
              ),
            )
          ],
        )),
  );
}

//Widget title(String title1, String title2, IconData title3, double number) {
//   return Card(
//     margin: EdgeInsets.all(0),
//     child: RaisedButton(
//         elevation: 0,
//         highlightColor: Colors.white70,
//         padding: EdgeInsets.all(15),
//         onPressed: () {},
//         color: Colors.white70,
//         child: Row(
//           children: [
//             Container(
//               alignment: Alignment.centerRight,
//               child: Text(title1),
//             ),
//             Padding(
//                 padding: EdgeInsets.only(left: number),
//                 child: title2 != null
//                     ? Text(
//                         title2,
//                         style: TextStyle(color: Colors.red, fontSize: 13),
//                       )
//                     : Container()),
//             Padding(
//               padding: EdgeInsets.only(left: 23),
//               child: Icon(
//                 title3,
//                 size: 16,
//               ),
//             ),
//           ],
//         )),
//   );
// }
