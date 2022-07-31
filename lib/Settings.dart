import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/Backup.dart';
import 'package:flutterapp1/Main_Page.dart';
import 'package:flutterapp1/Configuration.dart';
import 'package:flutterapp1/Pc_Manager.dart';
import 'package:flutterapp1/Theme.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:dynamic_theme/theme_switcher_widgets.dart';
import 'package:flutterapp1/main.dart';
import 'package:flutterapp1/Feedback.dart';

import 'Help.dart';

final itemIndex = 0;

//enum SingingCharacter { Light, Dark }


class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int groupValue;

  @override
  void initState() {
    groupValue = darkTheme ? 2 : 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Settings',
            style: TextStyle(fontSize: 17, height: 1.8),
          ),
          actions: [
            Container(
                margin: EdgeInsets.only(right: 10),
                child: Text(
                  '1.0.0  AP',
                  style: TextStyle(fontSize: 14, height: 3),
                ))
          ],
        ),
        body: NotificationListener<OverscrollIndicatorNotification>(
          // ignore: missing_return
          onNotification: (overScroll) {
            overScroll.disallowGlow();
          },
          child: GridView.count(
            //shrinkWrap: false,
            //addAutomaticKeepAlives: true,
            padding: EdgeInsets.all(0.5),
            // primary: false,
            childAspectRatio: 1.6,
            mainAxisSpacing: 0.5,
            crossAxisCount: 3,
            crossAxisSpacing: 0.5,
            // addRepaintBoundaries: false,
            children: [
              RaisedButton(
                //FlatButton
                padding: EdgeInsets.all(8),
                color: darkTheme ? Colors.black45 : Colors.white70,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Configuration()));
                },
                child: Container(
                  // alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings,
                        size: 40,
                      ),
                      Text('Configuration'),
                    ],
                  ),
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.all(8),
                color: darkTheme ? Colors.black45 : Colors.white70,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PcManagement()));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.desktop_windows,
                        size: 40,
                      ),
                      Text('PC Manager'),
                    ],
                  ),
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.all(8),
                color: darkTheme ? Colors.black45 : Colors.white70,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Backup()));
                },
                child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.history,
                            size: 40,
                          ),
                          Text('Backup'),
                        ])),
              ),
              RaisedButton(
                padding: EdgeInsets.all(8),
                color: darkTheme ? Colors.black45 : Colors.white70,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Select Theme'),
                          content: Container(
                            height: 112,
                            child: Column(
                              children: [
                                //    GestureDetector(
                                // child:,)
                                RadioListTile(
                                  // controlAffinity: ListTileControlAffinity.trailing,
                                  // toggleable: false,
                                    title: Text('Light'),
                                    value: 1,
                                    groupValue: groupValue,
                                    selected: !darkTheme,
                                    onChanged: (value) {
                                      setState(() {
                                        // DefaultTabController(length: null, child: );
                                        DynamicTheme.of(context).setBrightness(
                                            Theme
                                                .of(context)
                                                .brightness == Brightness.dark
                                                ? Brightness.light
                                                : Brightness.dark);
                                        groupValue = value;
                                        darkTheme = false;
                                      });

                                      Navigator.pop(context);
                                    }
                                ),
                                // onTap: (){
                                //   if(darkTheme==false)
                                //     Navigator.pop(context);
                                //   print('sik');
                                // },

                                RadioListTile(

                                  //toggleable: true,
                                  selected: darkTheme,
                                  title: Text('Dark'),
                                  value: 2,
                                  groupValue: groupValue,
                                  // value: SingingCharacter.Dark,
                                  // groupValue: _character,
                                  onChanged: (value) {
                                    setState(() {
                                      DynamicTheme.of(context).setBrightness(
                                          Theme
                                              .of(context)
                                              .brightness == Brightness.light
                                              ? Brightness.dark
                                              : Brightness.light);
                                      groupValue = value;
                                      darkTheme = true;
                                    });
                                    Navigator.pop(context);
                                  },
                                  //  controlAffinity: ,
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.format_paint,
                        size: 40,
                      ),
                      Text('Theme'),
                    ],
                  ),
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.all(8),
                color: darkTheme ? Colors.black45 : Colors.white70,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Help()));
                },
                child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.help,
                          size: 40,
                        ),
                        Text('Help'),
                      ],
                    )),
              ),
              RaisedButton(
                  padding: EdgeInsets.all(8),
                  color: darkTheme ? Colors.black45 : Colors.white70,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FeedBack()));
                  },
                  child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.feedback,
                            size: 40,
                          ),
                          Text('Feedback'),
                        ],
                      ))),
            ],
          ),
        ));
  }

}

