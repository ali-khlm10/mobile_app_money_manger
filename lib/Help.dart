import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TITLE1.dart';
import 'Title_header.dart';
import 'main.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
            color: darkTheme ? Colors.black45 : Colors.blueGrey,
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
                  'Help',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
            height: 50,
            color: darkTheme ? Colors.black45 : Colors.blueGrey,
            alignment: Alignment.centerLeft,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                title(
                    'Money Manager Android',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                title(
                    'http://maneymanagerandroid.wordpress.com/',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                title(
                    '4.5x Updates (September 2020)',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                titleHeader('Introduction'),
                title(
                    'Recording Your Expenses',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                title(
                    'Recording a Transfer',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                title(
                    'Setting Up a Monthly Budget',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                title(
                    'Bookmark Guide',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                title(
                    'Carry-Over Configuration',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                titleHeader('Category'),
                title(
                    'Subcategory Guide',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                title(
                    'Adding a Subcategory Under Expense Category',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                title(
                    'Subcategory > Main Category Transition Guide',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                titleHeader('Account Management'),
                title(
                    'Changing Your Account Orders',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                title(
                    'Deleting Accounts',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                Card(
                  margin: EdgeInsets.all(0),
                  child: RaisedButton(
                      elevation: 0,
                      highlightColor: Colors.white70,
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 8, bottom: 8),
                      onPressed: () {},
                      color: darkTheme ? Colors.black45 : Colors.white70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Container(
                              height: 35,
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Saving/Investment/Insurance/Loan Asset Group '
                                    ' Expenses Configuration',
                                style: TextStyle(fontSize: 13.5),
                                maxLines: 2,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              ),
                              //padding: EdgeInsets.only(bottom: 2),
                              margin: EdgeInsets.only(top: 1),
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          )
                        ],
                      )),
                ),
                Divider(
                  height: 0.3,
                ),
                // title(
                //     'Saving/Investment/Insurance/Loan Asset Group '
                //         'Expenses Configuration',
                //     null,
                //     Icon(
                //       Icons.arrow_forward_ios,
                //       size: 15,
                //     )
                // ),
                Divider(
                  height: 1,
                ),
                title(
                    'Loans And Overdraft',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                titleHeader('Card Management'),
                title(
                    'Credit Card Payment',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                title(
                    'Amending Credit Card Payment Date',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                title(
                    'Notices For Debit Card Usage',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                title(
                    'Card Payment Method Configuration',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                Card(
                  margin: EdgeInsets.all(0),
                  child: RaisedButton(
                      elevation: 0,
                      highlightColor: Colors.white70,
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 8, bottom: 8),
                      onPressed: () {},
                      color: darkTheme ? Colors.black45 : Colors.white70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Container(
                              height: 35,
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Recording Rebates And Further Cash Flows After'
                                    ' Initial Transaction',
                                style: TextStyle(fontSize: 13.5),
                                maxLines: 2,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              ),
                              //padding: EdgeInsets.only(bottom: 2),
                              margin: EdgeInsets.only(top: 1),
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          )
                        ],
                      )),
                ),
                // title(
                //     'Recording Rebates And Further Cash Flows After'
                //     'Initial Transaction',
                //     null,
                //     Icon(
                //       Icons.arrow_forward_ios,
                //       size: 15,
                //     )),
                Divider(
                  height: 1,
                ),
                titleHeader('Backup And Restore'),
                title(
                    'Date Backup/Restore',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                title(
                    'Transfering Your Data(Ios/Android->android)',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                title(
                    'Auto-Backup Function Guide',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                title(
                    'Unicode Txt Import Via Microsoft Excel',
                    null,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
                Divider(
                  height: 1,
                ),
                Container(
                  height: 100,
                  color: Colors.black12,
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
