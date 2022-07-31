import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp1/Data.dart';
import 'package:flutterapp1/GetData.dart';
import 'package:flutterapp1/Time.dart';

//import 'package:flutterapp1/TITLE1.dart';
import 'package:flutterapp1/Transcation_Tile.dart';
import 'package:flutterapp1/main.dart';
import 'package:flutter/cupertino.dart';

class APPBAR extends StatefulWidget {
  @override
  _APPBARState createState() => _APPBARState();
}

List<String> sik = [];

class _APPBARState extends State<APPBAR> {
  ScrollController controller = ScrollController();
  String monthAdded;
  int yearCounter;
  @override
  void initState() {
    loadData();
    monthAdded = 'OCT';
    yearCounter = 2020;
    super.initState();
  }

  Widget transcationsForOneDay(Time time) {
    List<Transcation> Temp = [];
    double totalIncome=0;
    double totalExpense=0;
    //for(int i=0;i<transcation.length;i++)
    transcation.forEach((element) {
      if(element.Date.Year==time.Year && element.Date.Month==time.Month && element.Date.Day==time.Day)
        Temp.add(element);
    });
    Temp.forEach((element) {
      if(element.transcationKind==0)
        totalIncome+=element.Price;
      if(element.transcationKind==1)
        totalExpense+=element.Price;
    });
    return Column(
      children: [
        Container(
          height: 50 + (Temp.length.toDouble() * 50),
          child: Column(
            children: [
              getDataTileHeader(totalIncome,totalExpense,time),
              Expanded(
                child: ListView.builder(
                  controller: controller,
                  itemCount: Temp.length,
                  itemBuilder: (context, index) {
                    return TranscationTile(transcation:Temp[index],);
                  },
                ),
              ),
            ],
          ),
        ),
        Divider(height: 3,color: Colors.black26,),
        Container(height: 3),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //toolbarHeight: 80,
        bottom: TabBar(
            //indicatorSize: TabBarIndicatorSize.label,
            isScrollable: false,
            tabs: [
              Tab(
                child: Text(
                  'Daily',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              Tab(
                  child: Text(
                'Calendar',
                style: TextStyle(fontSize: 13),
              )),
              Tab(
                child: Text(
                  'Weekly',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              Tab(
                  child: Text(
                'Monthly',
                style: TextStyle(fontSize: 13),
              )),
              // Tab(child: Text('Total',style: TextStyle(fontSize: 13),)),
            ]),
        title: Row(
          children: [
            IconButton(
                icon: Icon(Icons.arrow_back_ios, size: 15), onPressed: () {}),
            GestureDetector(
              child: Container(
                height: 30,
                width: 80,
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(
                            child: Text(
                          yearCounter.toString(),
                          textScaleFactor: 1,
                          style: TextStyle(fontSize: 16),
                        )),
                      ),
                      flex: 3,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Center(
                            child: Text(
                          monthAdded,
                          textScaleFactor: 1,
                          style: TextStyle(fontSize: 14),
                        )),
                      ),
                      flex: 2,
                    )
                  ],
                ),
              ),
              onTap: () {
                showGeneralDialog(
                  context: context,
                  barrierDismissible: true,
                  barrierLabel: MaterialLocalizations.of(context)
                      .modalBarrierDismissLabel,
                  barrierColor: Colors.black54,
                  transitionDuration: const Duration(milliseconds: 200),
                  pageBuilder: (BuildContext buildContext, Animation animation,
                      Animation secondaryAnimation) {
                    return Align(
                      alignment: Alignment.topCenter,
                      // heightFactor: 250,
                      child: Container(
                        // width: MediaQuery.of(context).size.width,
                        height: 220,
                        width: 600,
                        // height: MediaQuery.of(context).size.height -  300,
                        //padding: EdgeInsets.all(500),
                        margin: EdgeInsets.only(
                            top: 70, left: 15, right: 15, bottom: 50),
                        color: Colors.white,
                        child: Scaffold(
                            body: Column(
                          children: [
                            Container(
                              height: 50,
                              color: Color(0xFF1BC0C5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 50,
                                    // color: Colors.green,
                                    child: IconButton(
                                      padding: EdgeInsets.only(left: 20),
                                      //  color: Colors.red,
                                      alignment: Alignment.centerLeft,
                                      icon: Icon(
                                        Icons.arrow_back_ios, size: 20,
                                        // color: Colors.blue,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          yearCounter--;
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.red,
                                    height: 50,
                                    child: Center(
                                      child: Text(
                                        yearCounter.toString(),
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    //color: Colors.green,
                                    child: IconButton(
                                      padding: EdgeInsets.only(right: 20),
                                      // color: Colors.red,
                                      alignment: Alignment.centerRight,
                                      icon: Icon(
                                        Icons.arrow_forward_ios, size: 20,
                                        // color: Colors.blue,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          yearCounter++;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 120,
                              // color: Colors.red,
                              child: GridView.builder(
                                padding: EdgeInsets.all(0),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 6,
                                        childAspectRatio: 0.925),
                                itemCount: monthList.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    child: Container(
                                      // height: 65,
                                      alignment: Alignment.center,
                                      child: Text(monthList[index]),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black12,
                                              width: 0.5)),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        monthAdded = monthList[index];
                                        Navigator.pop(context);
                                      });
                                    },
                                  );
                                },
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 50,
                                // color: Colors.green,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Card(
                                      color: Color(0xFF1BC0C5),
                                      child: FlatButton(
                                        child: Text(
                                          'Cancel',
                                          textAlign: TextAlign.center,
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                      ),
                    );
                  },
                );
              },
            ),
            IconButton(
                icon: Icon(Icons.arrow_forward_ios, size: 15),
                onPressed: () {}),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.bookmark),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child:Card(
            margin: EdgeInsets.only(top: 2),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Income'),
                          Text(
                            '0.00',
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(4),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Expenses'),
                          Text(
                            '0.00',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(4),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Total'), Text('0.00')],
                      ),
                      padding: EdgeInsets.all(5),
                    ),
                    flex: 1,
                  ),
                ],
              ),
              height: 45,
            ),
            elevation: 1,
          ) ,),
          Container(height: 4,),
          Expanded(
              child: NotificationListener<OverscrollIndicatorNotification>(
              // ignore: missing_return
                onNotification: (overScroll) {
                  overScroll.disallowGlow();
                },
                child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 70),
                  itemCount: transcationDate.length,
                  controller: controller,
                  itemBuilder: (context, index) {
                    return transcationsForOneDay(transcationDate[index]);
                  },
                )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => GetData()));
          // setState(() {
          //   sik.add('25');
          // });
        },
      ),
    );
  }
}

Widget getDataTileHeader( double totalIncome,double totalExpense, Time time) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    margin: EdgeInsets.all(0),
    child: Container(
      //color: Colors.indigoAccent,
      padding: EdgeInsets.all(0),
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Center(
                        child: Text(
                          time.Day.toString(),
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(right: 5),
                              alignment: Alignment.bottomLeft,
                              child: Text('${time.Year}.${time.Month}',
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold)),
                            ),
                            flex: 4,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(top: 3, right: 5),
                              alignment: Alignment.topLeft,
                              child: Text( returnWeekDay(time.WeekDay),
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    color: time.WeekDay==7?Colors.red:Colors.black
                                  )),
                            ),
                            flex: 5,
                          ),
                        ],
                      ),
                    ),
                    flex: 1,
                  )
                ],
              ),
              // height: 50,
              //alignment: Alignment.center,
              // child: Text(
              //   // Str,
              //   'sik',
              //   style: TextStyle(
              //       color: darkTheme ? Colors.white38 : Colors.black38,
              //       fontSize: 13),
              // ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              //padding: EdgeInsets.only(right: 5),
              child: Text(
                totalIncome.toString(),
                style: TextStyle(fontSize: 12, color: Colors.green),
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              // padding: EdgeInsets.only(left: 5),
              child: Text(
                totalExpense.toString(),
                style: TextStyle(fontSize: 12,color: Colors.red),
              ),
            ),
            flex: 1,
          ),
        ],
      ),
    ),
  );
}
