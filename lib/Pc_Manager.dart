import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/Title_header.dart';
import 'package:flutterapp1/TITLE1.dart';
import 'package:flutterapp1/Configuration.dart';
import 'package:flutterapp1/main.dart';

class PcManagement extends StatefulWidget {
  @override
  _PcManagementState createState() => _PcManagementState();
}

class _PcManagementState extends State<PcManagement> {
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
                  'PC Manager',
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
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: Text('PC Manager'),
                    height: 30,
                    alignment: Alignment.centerLeft,
                  ),
                  elevation: 0,
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  margin: EdgeInsets.all(0),
                  child: Container(
                    color: darkTheme?Colors.black45:Colors.white70,
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: Text(
                      'If you inter the following address to your browser , you can access Money Manager on your PC.However,refrain from using it on public networks for date and privacy protection.',
                      style: TextStyle(fontSize: 13.7),
                    ),
                    height: 75,
                    alignment: Alignment.centerLeft,
                  ),
                  elevation: 0,
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  margin: EdgeInsets.all(0),
                  child: Container(
                    color: darkTheme?Colors.black45:Colors.white70,
                    padding: EdgeInsets.only(left: 15, top: 5, bottom: 10),
                    child: Text(
                        "Inorder to use PC Manager , your PC and mobile device must be connected to the same network . Check your device's connected WIFI address is same as that of your PC . ",
                        style: TextStyle(fontSize: 13.7)),
                    height: 80,
                    alignment: Alignment.centerLeft,
                  ),
                  elevation: 0,
                ),
                Divider(
                  height: 0.2,
                  color: Colors.black26,
                ),
                Container(
                  color: darkTheme?Colors.black45:Colors.black12,
                  height: 11,
                ),
                Divider(
                  height: 1,
                  color: Colors.black54,
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  margin: EdgeInsets.all(0),
                  child: Container(
                    color: darkTheme?Colors.black45:Colors.white70,
                    padding: EdgeInsets.only(left: 15, top: 10),
                    child: Text('Wi-Fi: none'),
                    height: 30,
                    alignment: Alignment.centerLeft,
                  ),
                  elevation: 0,
                ),
                Card(
                  color: darkTheme?Colors.black26:Colors.white70,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  margin: EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(margin: EdgeInsets.all(0),
                       // color: darkTheme?Colors.black45:Colors.white70,
                        padding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
                        child: Text('URL: http://0.0.0.0:8888'),
                        height: 35,
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                         // color: darkTheme?Colors.black45:Colors.white70,
                          child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 15, top: 5, bottom: 8,right: 15),width: 70,
                            child: RaisedButton(color: Colors.black12,padding: EdgeInsets.all(5),
                              elevation: 0.2,
                              child: Container(
                                child: Text(
                                'Port',
                                style: TextStyle(color: Colors.white,fontSize: 12),
                              ),
                                //padding: EdgeInsets.only(left: 2,right: 2),
                              ),
                              onPressed: () {},
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                            height: 35,
                            alignment: Alignment.centerLeft,
                          ),
                        ],
                      ))
                    ],
                  ),
                  elevation: 0,
                ),
                Divider(
                  height: 0.2,
                  color: Colors.black26,
                ),
                Container(
                  color: darkTheme?Colors.black45:Colors.black12,
                  height: 11,
                ),
                Divider(
                  height: 1,
                  color: Colors.black54,
                ),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  margin: EdgeInsets.all(0),
                  child: Container(
                    color: darkTheme?Colors.black45:Colors.white70,
                    padding: EdgeInsets.only(left: 15, top: 5),
                    child: Text(
                      'Enter the passcode shown below upon logging in.If you put passcode settings as OFF , you can access without this procedure .',
                      style: TextStyle(fontSize: 13.7),
                    ),
                    height: 70,
                    alignment: Alignment.centerLeft,
                  ),
                  elevation: 0,
                ),
                Card(
                  color: darkTheme?Colors.black26:Colors.white70,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  margin: EdgeInsets.all(0),
                  child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                       // color: darkTheme?Colors.black45:Colors.white70,
                    padding: EdgeInsets.only(left: 15, top: 5,bottom: 10),
                    child: Text('Password: none'),
                    height: 35,
                    alignment: Alignment.centerLeft,
                  ),
                      doSwitch(),
                    ],),
                  elevation: 0,
                ),
                Divider(
                  height: 1,
                  color: Colors.black12,
                ),
                Container(
                  color: darkTheme?Colors.black45:Colors.black12,
                  height: 183.8,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
  Widget doSwitch() {
    bool isSwitched = false;
    return Container(
        height: 16,
        child: Switch(
          value: isSwitched,
          onChanged: (value) {
            setState(() {});
          },
          activeColor: Colors.lightBlueAccent,
          activeTrackColor: Colors.lightBlueAccent,
        ));
  }
}
