import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterapp1/main.dart';
import 'Data.dart';
import 'Time.dart';
import 'package:auto_direction/auto_direction.dart';



class Transfer extends StatefulWidget {
  Transcation transcation;
  Transfer({Key key, this.transcation}) : super(key: key);
  @override
  _TransferState createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  Time time;
  Category accountFrom;
  Category accountTo;
  TextEditingController textEditingControllerForPriceInTransfer=TextEditingController();
  TextEditingController textEditingControllerForExplainInTransfer=TextEditingController();
  TextEditingController textEditingControllerForMemoInTransfer=TextEditingController();
  String fromAccountsTitleAdded;
  String toAccountsTitleAdded;
  String text='';
  @override

  void initState() {
    DateTime dateTime = DateTime.now();
    fromAccountsTitleAdded = '';
    toAccountsTitleAdded = '';
    time = Time();
    accountFrom=Category();
    accountTo=Category();
    time.Year = dateTime.year;
    time.Month = dateTime.month;
    time.Day = dateTime.day;

    time.Hour = dateTime.hour;
    time.Minute = dateTime.minute;
    time.WeekDay = dateTime.weekday;
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 5,right: 4),
          child:  Divider(
          height: 0.4,
            color: darkTheme?Colors.black38:Colors.black38,
        ),
        ),
        Expanded(
          child: ListView(
             padding: EdgeInsets.only(left: 3,right: 3),
            children: [
              Card(
                margin: EdgeInsets.all(0),
             child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        //padding: const EdgeInsets.only(left: 2),
                        padding: EdgeInsets.all(0),
                        child: Table(
                          textDirection: TextDirection.ltr,
                          defaultVerticalAlignment:
                          TableCellVerticalAlignment.bottom,
                          border: TableBorder.all(
                            width: 0.5,
                            color: darkTheme?Colors.black54:Colors.black54,
                          ),
                          children: [
                            TableRow(children: [
                              Container(
                                height: 50,
                                color: darkTheme?Colors.black12:Colors.black12,
                                child: Center(
                                  child: Text('Date'),
                                ),
                                padding: EdgeInsets.all(12),
                              ),
                              // Text("Education",textScaleFactor: 1.5,),
                              //  Text("Institution name",textScaleFactor: 1.5),
                              // Text("University",textScaleFactor: 1.5),
                            ]),
                          ],
                        ),
                      ),
                      flex: 15,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 0.5),
                        child: Table(
                          textDirection: TextDirection.ltr,
                          defaultVerticalAlignment:
                          TableCellVerticalAlignment.baseline,
                          border: TableBorder.all(
                              width: 0.5,
                            color: darkTheme?Colors.black54:Colors.black54,
                          ),
                          children: [
                            TableRow(children: [
                              Container(
                                //  color: Colors.yellow,
                                height: 50,
                                // child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child:FlatButton(
                                        child: Container(//////////////////////////////////////////////////////////
                                          // color: Colors.red,
                                          height: 50,
                                          margin: EdgeInsets.all(0),
                                          child: Row(
                                            children: [
                                              //Icon(Icons.calendar_today),
                                              Expanded(
                                                child: Container(
                                                  child: Icon(FontAwesomeIcons
                                                      .solidCalendarAlt,size: 20,),
                                                  alignment:
                                                  Alignment.centerRight,
                                                ),
                                                flex: 1,
                                              ),
                                              Expanded(
                                                // child: Center(
                                                //child: GestureDetector(
                                                child: Container(
                                                  child: Text(time.Year
                                                      .toString() +
                                                      '/' +
                                                      time.Month.toString() +
                                                      '/' +
                                                      time.Day.toString()+
                                                  '('+returnLitleWeekDay(time.WeekDay)+')'),
                                                  alignment: Alignment.center,
                                                  // color: Colors.yellow,
                                                ),
                                                //  ),
                                                flex: 9,
                                              )
                                            ],
                                          ),
                                        ),
                                        onPressed: () {
                                          DatePicker.showDatePicker(
                                            context,
                                            showTitleActions: true,
                                            minTime:
                                            DateTime(2018, 3, 5),
                                            maxTime: DateTime(
                                                2021, 12, 31),
                                            onConfirm: (date) {
                                              setState(() {
                                                time.Year = date.year;
                                                time.Month =
                                                    date.month;
                                                time.Day = date.day;
                                                time.WeekDay=date.weekday;
                                              });
                                            },
                                            currentTime:
                                            DateTime.now(),
                                            locale: LocaleType.en,
                                          );
                                        },
                                      ),
                                      flex: 2,
                                    ),
                                    Expanded(
                                      child:FlatButton(
                                        child: Container(////////////////////////////////////////////////////////////////////
                                          height: 50,
                                          //color: Colors.green,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  alignment:
                                                  Alignment.centerRight,
                                                  child:
                                                  Icon(Icons.access_time,size: 20,),
                                                ),
                                                flex: 1,
                                              ),
                                              Expanded(
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  padding: EdgeInsets.only(
                                                      left: 0),
                                                  child: Text(time.Hour
                                                      .toString() +
                                                      ':' +
                                                      time.Minute.toString()),
                                                  //color: Colors.yellow,
                                                ),
                                                flex: 2,
                                              ),
                                            ],
                                          ),
                                        ),
                                        onPressed: () {
                                          DatePicker.showTimePicker(
                                            context,
                                            theme: DatePickerTheme(
                                                cancelStyle:
                                                TextStyle(
                                                    color: Colors
                                                        .red)),
                                            showTitleActions: true,
                                            onConfirm: (date) {
                                              setState(() {
                                                time.Hour = date.hour;
                                                time.Minute =
                                                    date.minute;
                                              });
                                            },
                                            currentTime:
                                            DateTime.now(),
                                            locale: LocaleType.en,
                                          );
                                        },
                                      ),
                                      flex: 1,
                                    ),
                                  ],
                                ),

                                padding: EdgeInsets.all(0),
                              ),
                            ]),
                          ],
                        ),
                      ),
                      flex: 50,
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        // padding: const EdgeInsets.only(left: 2),
                        padding: EdgeInsets.all(0),
                        child: Table(
                          textDirection: TextDirection.ltr,
                          defaultVerticalAlignment:
                          TableCellVerticalAlignment.bottom,
                          border: TableBorder.all(
                            width: 0.5,
                            color: darkTheme?Colors.black54:Colors.black54,
                          ),
                          children: [
                            TableRow(children: [
                              Container(
                                height: 50,
                                color: darkTheme?Colors.black12:Colors.black12,
                                child: Center(
                                  child: Text('From'),
                                ),
                                padding: EdgeInsets.all(12),
                              ),
                              // Text("Education",textScaleFactor: 1.5,),
                              //  Text("Institution name",textScaleFactor: 1.5),
                              // Text("University",textScaleFactor: 1.5),
                            ]),
                          ],
                        ),
                      ),
                      flex: 15,
                    ),
                    Expanded(
                      child: FlatButton(
                        padding: EdgeInsets.all(0),
                        //color: Colors.yellow,
                        child: Container(
                          // margin: EdgeInsets.all(0),
                          // alignment:Alignment.center,
                          // color: Colors.yellow,
                          padding: const EdgeInsets.only(right: 0.5),
                          child: Table(
                            textBaseline: TextBaseline.ideographic,
                            textDirection: TextDirection.ltr,
                            defaultVerticalAlignment:
                            TableCellVerticalAlignment.bottom,
                            border: TableBorder.all(
                                width: 0.5,
                              color: darkTheme?Colors.black54:Colors.black54,
                            ),
                            children: [
                              TableRow(children: [
                                Container(
                                  height: 50,
                                  // color: Colors.tealAccent,
                                  alignment: Alignment.center,
                                  child: Text(fromAccountsTitleAdded),
                                ),
                              ]),
                            ],
                          ),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 290,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      color: darkTheme?Colors.blue:Colors.blue,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              padding:
                                              EdgeInsets.only(left: 15),
                                              child: Center(
                                                child: Text('Account'),
                                              )),
                                          IconButton(
                                            icon: Icon(
                                              Icons.close,
                                              size: 22,
                                              color: darkTheme?Colors.black:Colors.black,
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: GridView.builder(
                                          gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            // mainAxisSpacing: 1,//فاصله سطر ها از یکدیگر
                                            childAspectRatio: 1.5,
                                            //crossAxisSpacing: 1//فاصله ستون ها از یکدیگر
                                          ),
                                          itemCount: accountList.length,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              child: Container(
                                                height: 80,
                                                //color: Colors.red,
                                                alignment: Alignment.center,
                                                child:
                                                Text(accountList[index].Name),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: darkTheme?Colors.black12:Colors.black12,
                                                        width: 0.5)),
                                              ),
                                              onTap: () {
                                                setState(() {
                                                  fromAccountsTitleAdded =
                                                  accountList[index].Name;
                                                  accountFrom.Name=accountList[index].Name;
                                                  Navigator.pop(context);
                                                });
                                              },
                                            );
                                          }),
                                    )
                                  ],
                                ),
                              );

                            },
                          );
                        },
                      ),
                      flex: 50,
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        // padding: const EdgeInsets.only(left: 2),
                        padding: EdgeInsets.all(0),
                        child: Table(
                          textDirection: TextDirection.ltr,
                          defaultVerticalAlignment:
                          TableCellVerticalAlignment.bottom,
                          border: TableBorder.all(
                            width: 0.5,
                            color: darkTheme?Colors.black54:Colors.black54,
                          ),
                          children: [
                            TableRow(children: [
                              Container(
                                height: 50,
                                color: darkTheme?Colors.black12:Colors.black12,
                                child: Center(
                                  child: Text('To'),
                                ),
                                padding: EdgeInsets.all(12),
                              ),
                              // Text("Education",textScaleFactor: 1.5,),
                              //  Text("Institution name",textScaleFactor: 1.5),
                              // Text("University",textScaleFactor: 1.5),
                            ]),
                          ],
                        ),
                      ),
                      flex: 15,
                    ),
                    Expanded(
                      child: FlatButton(
                        padding: EdgeInsets.all(0),
                        child: Container(
                          // alignment:Alignment.center,
                          padding: const EdgeInsets.only(right: 0.5),
                          child: Table(
                            textBaseline: TextBaseline.ideographic,
                            textDirection: TextDirection.ltr,
                            defaultVerticalAlignment:
                            TableCellVerticalAlignment.bottom,
                            border: TableBorder.all(
                                width: 0.5,
                              color: darkTheme?Colors.black54:Colors.black54,
                            ),
                            children: [
                              TableRow(children: [
                                Container(
                                  height: 50,
                                  //color: Colors.yellow,
                                  alignment: Alignment.center,
                                  child: Text(toAccountsTitleAdded),
                                ),
                              ]),
                            ],
                          ),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 290,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      color: darkTheme?Colors.blue:Colors.blue,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              padding:
                                              EdgeInsets.only(left: 15),
                                              child: Center(
                                                child: Text('Account'),
                                              )),
                                          IconButton(
                                            icon: Icon(
                                              Icons.close,
                                              size: 22,
                                              color: darkTheme?Colors.black:Colors.black,
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: GridView.builder(
                                          gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            // mainAxisSpacing: 1,//فاصله سطر ها از یکدیگر
                                            childAspectRatio: 1.5,
                                            //crossAxisSpacing: 1//فاصله ستون ها از یکدیگر
                                          ),
                                          itemCount: accountList.length,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              child: Container(
                                                height: 80,
                                                //color: Colors.red,
                                                alignment: Alignment.center,
                                                child:
                                                Text(accountList[index].Name),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: darkTheme?Colors.black12:Colors.black12,
                                                        width: 0.5)),
                                              ),
                                              onTap: () {
                                                setState(() {
                                                  toAccountsTitleAdded =
                                                  accountList[index].Name;
                                                  accountTo.Name=accountList[index].Name;
                                                  Navigator.pop(context);
                                                });
                                              },
                                            );
                                          }),
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                      flex: 50,
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        // padding: const EdgeInsets.only(left: 2),
                        padding: EdgeInsets.all(0),
                        child: Table(
                          textDirection: TextDirection.ltr,
                          defaultVerticalAlignment:
                          TableCellVerticalAlignment.bottom,
                          border: TableBorder.all(
                            width: 0.5,
                            color: darkTheme?Colors.black54:Colors.black54,
                          ),
                          children: [
                            TableRow(children: [
                              Container(
                                height: 50,
                                color: darkTheme?Colors.black12:Colors.black12,
                                child: Center(
                                  child: Text('Amount'),
                                ),
                                padding: EdgeInsets.all(12),
                              ),
                              // Text("Education",textScaleFactor: 1.5,),
                              //  Text("Institution name",textScaleFactor: 1.5),
                              // Text("University",textScaleFactor: 1.5),
                            ]),
                          ],
                        ),
                      ),
                      flex: 15,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 0.5),
                        child: Table(
                          textDirection: TextDirection.ltr,
                          defaultVerticalAlignment:
                          TableCellVerticalAlignment.baseline,
                          border: TableBorder.all(
                              width: 0.5,
                            color: darkTheme?Colors.black54:Colors.black54,
                          ),
                          children: [
                            TableRow(children: [
                              Container(
                                height: 50,
                                child: TextField(
                                  maxLines: ,
                                  controller: textEditingControllerForPriceInTransfer,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  cursorColor: null,
                                  maxLengthEnforced: true,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      // labelText: 'Date',
                                      hintText: 'Enter Amount ...',
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                        color: darkTheme?Colors.white70:Colors.black26,
                                      )),
                                ),
                                padding: EdgeInsets.all(8),
                              ),
                              // Text("Education",textScaleFactor: 1.5,),
                              //  Text("Institution name",textScaleFactor: 1.5),
                              // Text("University",textScaleFactor: 1.5),
                            ]),
                          ],
                        ),
                      ),
                      flex: 50,
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        // padding: const EdgeInsets.only(left: 2),
                        padding: EdgeInsets.all(0),
                        child: Table(
                          textDirection: TextDirection.ltr,
                          defaultVerticalAlignment:
                          TableCellVerticalAlignment.bottom,
                          border: TableBorder.all(
                            width: 0.5,
                            color: darkTheme?Colors.black54:Colors.black54,
                          ),
                          children: [
                            TableRow(children: [
                              Container(
                                height: 50,
                                color: darkTheme?Colors.black12:Colors.black12,
                                child: Center(
                                  child: Text('Contents'),
                                ),
                                padding: EdgeInsets.all(12),
                              ),
                              // Text("Education",textScaleFactor: 1.5,),
                              //  Text("Institution name",textScaleFactor: 1.5),
                              // Text("University",textScaleFactor: 1.5),
                            ]),
                          ],
                        ),
                      ),
                      flex: 15,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 0.5),
                        child: Table(
                          textDirection: TextDirection.ltr,
                          defaultVerticalAlignment:
                          TableCellVerticalAlignment.baseline,
                          border: TableBorder.all(
                              width: 0.5,
                            color: darkTheme?Colors.black54:Colors.black54,
                          ),
                          children: [
                            TableRow(children: [
                              Container(
                                height: 50,
                                child: TextField(
                                  maxLines: 1,
                                  controller: textEditingControllerForExplainInTransfer,
                                  // keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  cursorColor: null,
                                  maxLengthEnforced: true,
                                  decoration: InputDecoration(
                                   // filled: true,
                                      //fillColor: Colors.green,
                                      border: InputBorder.none,
                                      // labelText: 'Date',
                                      hintText: 'Enter Your Explain ...',
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                        color: darkTheme?Colors.white70:Colors.black26,
                                      )),
                                ),
                                padding: EdgeInsets.all(0),
                              ),
                              // Text("Education",textScaleFactor: 1.5,),
                              //  Text("Institution name",textScaleFactor: 1.5),
                              // Text("University",textScaleFactor: 1.5),
                            ]),
                          ],
                        ),
                      ),
                      flex: 50,
                    ),
                  ],
                ),
              ),
              Card(
                borderOnForeground: true,
                margin: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                       // height: 45,
                        padding: EdgeInsets.only(left: 8,bottom: 5),
                        child: AutoDirection(
                          text: text,
                          child: TextField(
                            maxLines: null,
                            controller: textEditingControllerForMemoInTransfer,
                            decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                // border: InputBorder.none,
                                // disabledBorder: InputBorder.none,
                                // alignLabelWithHint: false,
                                hoverColor: darkTheme?Colors.red:Colors.red,
                                fillColor: darkTheme?Colors.red:Colors.red,
                                // focusedBorder: InputBorder.none,
                                hintText: 'Memo'
                            ),
                            onChanged: (str){
                              setState(() {
                                text = str;
                              });
                            },
                          ),
                        ),
                      ),
                      flex: 5,
                    ),
                    Expanded(
                      child:Container(
                        height: 50,
                        padding: EdgeInsets.all(0),
                        child: FlatButton(
                          child: Icon(Icons.camera_alt),
                          onPressed: (){
                     showMenu(
                              context: context,
                              position: RelativeRect.fromLTRB(100, 280, 40, 12),
                              items: [
                                PopupMenuItem(
                                   child: Text("Camera"),
                                ),
                                PopupMenuItem(
                                  child: Text("Gallery"),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      flex: 1,
                    )
                  ],
                ),
              ),
              Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22),),
                  margin: EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 10),
                  child: Container(
                    height: 50,
                    //padding: EdgeInsets.only(left: 20),
                    child:   FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22),),
                      color: darkTheme?Colors.blue:Colors.blue,
                      onPressed: (){
                        widget.transcation.Date=time;
                        widget.transcation.FromAccount=accountFrom;
                        widget.transcation.ToAccount=accountTo;
                        widget.transcation.Price=double.parse(textEditingControllerForPriceInTransfer.text);
                        widget.transcation.Explain=textEditingControllerForExplainInTransfer.text;
                        widget.transcation.Memo=textEditingControllerForMemoInTransfer.text;
                        widget.transcation.transcationKind=2;
                        transcation.add(widget.transcation);
                        // ignore: missing_return
                        transcation.sort((b, a) {
                          if (a.Date.Year > b.Date.Year ||
                              (a.Date.Year == b.Date.Year &&
                                  a.Date.Month > b.Date.Month) ||
                              (a.Date.Year == b.Date.Year &&
                                  a.Date.Month == b.Date.Month &&
                                  a.Date.Day > b.Date.Day) ||
                              (a.Date.Year == b.Date.Year &&
                                  a.Date.Month == b.Date.Month &&
                                  a.Date.Day == b.Date.Day &&
                                  a.Date.Hour > b.Date.Hour) ||
                              (a.Date.Year == b.Date.Year &&
                                  a.Date.Month == b.Date.Month &&
                                  a.Date.Day == b.Date.Day &&
                                  a.Date.Hour == b.Date.Hour &&
                                  a.Date.Minute > b.Date.Minute)
                          )
                            return 1;
                          if (a.Date.Year < b.Date.Year ||
                              (a.Date.Year == b.Date.Year &&
                                  a.Date.Month < b.Date.Month) ||
                              (a.Date.Year == b.Date.Year &&
                                  a.Date.Month == b.Date.Month &&
                                  a.Date.Day < b.Date.Day) ||
                              (a.Date.Year == b.Date.Year &&
                                  a.Date.Month == b.Date.Month &&
                                  a.Date.Day == b.Date.Day &&
                                  a.Date.Hour < b.Date.Hour) ||
                              (a.Date.Year == b.Date.Year &&
                                  a.Date.Month == b.Date.Month &&
                                  a.Date.Day == b.Date.Day &&
                                  a.Date.Hour == b.Date.Hour &&
                                  a.Date.Minute < b.Date.Minute)
                          )
                            return -1;
                          if (
                          (a.Date.Year == b.Date.Year &&
                              a.Date.Month == b.Date.Month &&
                              a.Date.Day == b.Date.Day &&
                              a.Date.Hour == b.Date.Hour &&
                              a.Date.Minute == b.Date.Minute)
                          )
                            return 0;
                        });
                        loadData();
                        Navigator.pop(context);
                      },
                      child: Center(child: Text('Save',style: TextStyle(color: darkTheme?Colors.white:Colors.white),),),
                    ),
                  )
              )
            ],
          ),
        )
      ]),
    );
  }
}
