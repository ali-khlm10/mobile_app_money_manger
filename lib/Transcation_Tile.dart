import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/Data.dart';
import 'package:flutterapp1/main.dart';

class TranscationTile extends StatefulWidget {
Transcation transcation;
TranscationTile({Key key, this.transcation}) : super(key: key);
  @override
  _TranscationTileState createState() => _TranscationTileState();//(Str);
}

class _TranscationTileState extends State<TranscationTile> {
  // final String Str ;
  // _TranscationTileState(this.Str);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(widget.transcation.transcationKind==0?widget.transcation.FromCategoryIncome.Name:
              widget.transcation.transcationKind==1?widget.transcation.FromAccount.Name:
              widget.transcation.transcationKind==2?widget.transcation.FromAccount.Name:null,
                style: TextStyle(color: darkTheme?Colors.white38:Colors.black38, fontSize: 13),
              ),
            ),
            flex: 2,
          ),
          Expanded(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(margin: EdgeInsets.all(0),
                  child: Text(widget.transcation.Explain,
                    style: TextStyle(fontSize: 13.2),),
                ),
                Container(margin: EdgeInsets.all(0),
                  child: Text(
                   subTitle( widget.transcation),
                    style: TextStyle(color: darkTheme?Colors.white38:Colors.black38, fontSize: 10),
                  ),
                )
              ],
            ),
            flex: 3,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                widget.transcation.Price.toString(),
                style: TextStyle(
                    color: widget.transcation.transcationKind==0?Colors.green:
                    widget.transcation.transcationKind==1?Colors.red:
                    widget.transcation.transcationKind==2?Colors.blue:null,
                    fontSize: 13),),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }
}
