import 'dart:ffi';

import 'package:flutter/material.dart';

import 'TITLE1.dart';
import 'Title_header.dart';
import 'main.dart';



class Backup extends StatefulWidget {
  @override
  _BackupState createState() => _BackupState();
}

class _BackupState extends State<Backup> {
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
                    'Backup',
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
                  title(
                      'Google Drive Automated Backup',
                      'OFF',
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      )),
                  Divider(
                    height: 1,
                  ),
                  title(
                      'Backup/Restore On Device',
                      '9/22/20',
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      )),
                  Divider(
                    height: 1,
                  ),
                  title(
                      'Export Backup File To e-mail',
                      null,
                    null
                  ),
                  Divider(
                    height: 1,
                  ),
                  title(
                      'Export Excel To e-mail',
                      null,
                  null
                  ),
                  Divider(
                    height: 1,
                  ),
                  title(
                      'Help(Backup/Restore',
                      null,
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      )),
                  Divider(
                    height: 1,
                  ),
                  title(
                      'Help(Import From .txt file)',
                      null,
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      )),
                  Divider(
                    height: 1,
                  ),
                  titleHeader('Reset'),
                  title(
                      'A Complete Reset',
                    null,
                    null
                  ),
                  Divider(
                    height: 1,
                  ),
                  title(
                      'Reset Complete Only(Other will remain)',
                      null,
                      null
                  ),
                  Divider(
                    height: 1,
                  ),
                  Container(
                    height: 133,
                    color: Colors.black12,
                  )
                ],
              ),
            ),
          ],
        ),
        )
    );
  }
}
