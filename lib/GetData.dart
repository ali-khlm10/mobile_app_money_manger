import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/BookmarkPage.dart';
import 'package:flutterapp1/Data.dart';
import 'package:flutterapp1/Expense.dart';
import 'package:flutterapp1/Help.dart';
import 'package:flutterapp1/Income.dart';
import 'package:flutterapp1/Settings.dart';
import 'package:flutterapp1/Transfer.dart';

import 'Configuration.dart';
import 'main.dart';

class GetData extends StatefulWidget {

  @override
  _GetDataState createState() => _GetDataState();
}

class _GetDataState extends State<GetData> with TickerProviderStateMixin {
  TabController tabController;

  //ScrollPhysics scrollController;
  int tabBarIndex;

  //int scrollPhysicsIndex;
  // ScrollPhysics scrollPhysics;
  @override
  void initState() {
    tabBarIndex = 1;
    //  scrollPhysicsIndex=1;
    tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 1,
    );

    tabController.addListener(() {
      setState(() {
        tabBarIndex = tabController.index;
      });
    });
    // scrollPhysics =ScrollPhysics(
    // );
    // scrollController =ScrollController(
    //   keepScrollOffset: false,
    // );
    super.initState();
  }

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                    tabController.index == 0
                        ? Text(
                      'Income',
                      style: TextStyle(color: darkTheme?Colors.white:Colors.white,
                          fontSize: 16),
                    )
                        : tabController.index == 1
                        ? Text(
                      'Expense',
                      style: TextStyle(color: darkTheme?Colors.white:Colors.white,
                          fontSize: 16),
                    )
                        : Text(
                      'Transfer',
                      style: TextStyle(color: darkTheme?Colors.white:Colors.white,
                          fontSize: 16),
                    ),
                  ],
                ),

                IconButton(
                    icon: Icon(Icons.bookmark),
                    color: darkTheme?Colors.white:Colors.white,
                    onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => BookMarkPage()));
                    }
                ),
              ],
            ),
            height: 50,
            color: darkTheme ? Colors.black45 : Colors.blueGrey,
            alignment: Alignment.centerLeft,
          ),
          // Container(
          //   height: 2,
          //   color: darkTheme?Colors.black54:Colors.black12,
          // ),
          // Divider(
          //   height: 0.5,
          //   color: Colors.black54,
          // ),
          Container(
           // color: Colors.black12,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(border: Border.all(width: 1,color: darkTheme?Colors.black54:Colors.black12)),
                    height: 50,
                    margin: EdgeInsets.all(2),
                    child: FlatButton(
                      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        setState(() {
                          tabController.index = 0;
                        });
                      },
                      child: Text('Income'),
                      color: tabController.index==0?darkTheme?Colors.teal:Colors.teal:null,
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child:Container(
                    decoration: BoxDecoration(border: Border.all(width: 1,color: darkTheme?Colors.black54:Colors.black12)),

                    height: 50,
                    margin: EdgeInsets.all(2),
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          tabController.index=1;
                        });
                      },
                      child: Text('Expense'),
                      color: tabController.index==1?darkTheme?Colors.red:Colors.red:null,
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child:Container(
                    decoration: BoxDecoration(border: Border.all(width: 1,color: darkTheme?Colors.black54:Colors.black12)),
                    height: 50,
                    margin: EdgeInsets.all(2),
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          tabController.index=2;
                        });
                      },
                      child: Text('Transfer'),
                      color: tabController.index==2?darkTheme?Colors.blue:Colors.blue:null,
                    ),
                  ),
                  flex: 1,
                ),
              ],

            ),
          ),
          Expanded(
            child: Switcher(tabController.index),
          ),
        ],
      ),
    );
  }
}

Widget Switcher(int switchIndex){
  switch(switchIndex)
  {
    case 0:
      Transcation addIncomeTranscation=Transcation();
      return Income(transcation: addIncomeTranscation,);
      break;
    case 1:
      Transcation addExpenseTranscation=Transcation();
      return Expense(transcation: addExpenseTranscation,);
      break;
    case 2:
      Transcation addTransferTranscation=Transcation();
      return Transfer(transcation: addTransferTranscation,);
      break;
      
  }
}



// TabBar(
// labelPadding: EdgeInsets.all(0),
// controller: tabController,
// onTap: (index) {
// setState(() {
// tabBarIndex = index;
// //  if(tabBarIndex!=index)
// //    tabBarIndex=index;
// //  else
// //    tabBarIndex=index;
// //scrollPhysicsIndex=index;
// });
// },
// // physics: scrollPhysics,
// isScrollable: false,
// indicatorColor: Colors.black,
// labelColor: darkTheme ? Colors.white : Colors.black,
// unselectedLabelColor: Colors.black54,
// tabs: [
// Container(
// //  alignment: Alignment.center,
// //  margin: EdgeInsets.all(0),
// // padding: EdgeInsets.all(0),
// // child: Tab(
// child: Center(
// child: Text('Income'),
// // heightFactor: 3,
// ),
// // ),
// height: 45,
// color: tabBarIndex == 0 ? Colors.lightGreenAccent : null,
// ),
// Container(
// child: Center(
// child: Text('Expense'),
// // heightFactor: 3,
// ),
// height: 45,
// color: tabBarIndex == 1 ? Colors.red : null),
// Container(
// child: Center(
// child: Text('Transfer'),
// //  heightFactor: 3,
// ),
// height: 45,
// color: tabBarIndex == 2 ? Colors.blueAccent : null),
// ],
// ),
// Expanded(
// child: TabBarView(
// controller: tabController,
// //  physics: scrollPhysics,
// children: [Income(),Income(),Income()]),
// ),
