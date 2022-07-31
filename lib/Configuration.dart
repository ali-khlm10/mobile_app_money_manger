//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/TITLE1.dart';
import 'package:flutterapp1/Main_Page.dart';
import 'package:flutterapp1/Title_header.dart';
import 'package:flutterapp1/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Configuration extends StatefulWidget {
  @override
  _ConfigurationState createState() => _ConfigurationState();
}

class _ConfigurationState extends State<Configuration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // backgroundColor: Colors.white70,
        // appBar:
        // AppBar(
        //   title: Text(
        //     'Configuration',
        //     style: TextStyle(fontSize: 16),
        //   ),
        //   toolbarHeight: 48,
        // ),
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
                        'Configuration',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  height: 50,
                  color: darkTheme?Colors.black45:Colors.blueGrey,
                  alignment: Alignment.centerLeft,
                ),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.all(0),
                    children: [
                      titleHeader('Accounts'),
                      title(
                          'Account Group',
                          null,
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Accounts Management',
                          null,
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Delete Account Group',
                          null,
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Delete Accounts',
                          null,
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Transfer-Expense Setting',
                          null,
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Card Expenses Display Config.',
                          'A.At the time',
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      titleHeader('Category/Repeat'),
                      title(
                          'Income Category Management',
                          null,
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Expenses Category Management',
                          null,
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Subcategory',
                          'OFF',
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Budget Setting',
                          null,
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Repeat Management',
                          null,
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      titleHeader('Configuration'),
                      title(
                          'Passcode',
                          'OFF',
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Main Currency Setting',
                          'IRR(IRR)',
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Sub Currency Setting',
                          null,
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Weekly Start Day',
                          'Saturday',
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Monthly Start Day',
                          'Every 1',
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Carry-over Setting',
                          'OFF',
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Quick add',
                          'OFF',
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      titleHeader('Other'),
                      title(
                          'Start Screen (Daily/Calender)',
                          'Daily',
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Income-Expenses Color Setting',
                          'Set.A',
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Time Input',
                          'Input Only,Desc.',
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Show Memo',
                          'OFF',
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      title('Auteocomplate', null, doSwitch()),
                      Divider(
                        height: 1,
                      ),
                      title(
                          'Language Setting',
                          null,
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )),
                      Divider(
                        height: 1,
                      ),
                      Container(
                        height: 80,
                        color: Colors.black12,
                      )
                    ],
                  ),
                ),
              ],
            )
        )
    );
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
