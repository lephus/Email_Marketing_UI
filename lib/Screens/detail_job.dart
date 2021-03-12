import 'package:email_marketing/Screens/set_data_time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailJob extends StatefulWidget{
  DetailJob({Key key, @required this.data}) : super(key: key);
  final data;
  @override
  State<StatefulWidget> createState() {
   return _DetailJobState();
  }
}
class _DetailJobState extends State<DetailJob>{
  String _DataTime = "00/00/0000#00h00";
  double _value = 0;
  bool _working = false;
  dynamic ColorProcess = Colors.white;
  void startWorking()  async {
    this.setState(() {
      this._working = true;
      this.ColorProcess = Colors.red;
      this._value = 0;
    });
    for(int i = 0; i< 10; i++) {
      if(!this._working)  {
        break;
      }
      await Future.delayed(Duration(seconds: 1));
      this.setState(() {
        this._value += 0.1;
      });
    }
    this.setState(() {
      this.ColorProcess = Colors.white;
      this._working = false;
    });
  }
  void stopWorking() {
    this.setState(() {
      this.ColorProcess = Colors.white;
      this._working = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    final data  = widget.data;
    dynamic viewTime = _DataTime.split("#");
    final DataTimeButton = new RaisedButton(
      child: const Text('change date time'),
      textColor: Colors.white,
      color: Theme.of(context).accentColor,
      elevation: 10.0,
      splashColor: Colors.blueGrey,
      onPressed: () async {
        final DataTime =await Navigator.push(context,
          MaterialPageRoute(
              builder: (context) => DateTimePicker()
          ),
        );
        if(DataTime != null){
          setState(() {
            _DataTime = DataTime.toString();
            viewTime = _DataTime.split("#");
          });
        }
      },
    );
    final StartButton = new RaisedButton(
      child: const Text('Start Now'),
      textColor: Colors.white,
      color: Colors.green,
      elevation: 10.0,
      splashColor: Colors.blueGrey,
      onPressed:this._working? null: () {
          this.startWorking();
        }
    );
    final DeleteButton = new RaisedButton(
      child: const Text('Delete Job'),
      textColor: Colors.white,
      color: Colors.red,
      elevation: 10.0,
      splashColor: Colors.blueGrey,
      onPressed: () async {
      },
    );
    final _LinearProgressIndicator = LinearProgressIndicator(
      backgroundColor: Colors.white,
      valueColor: new AlwaysStoppedAnimation<Color>(ColorProcess),
    );
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(data),
        ),
        body:ListView(
          children: [
           _LinearProgressIndicator,
            Container(
                margin: EdgeInsets.only(top:15.0),
              child: Row(
                children: [
                  SizedBox(width: 25.0,),
                  Icon(Icons.date_range,),
                  SizedBox(width: 20.0,),
                  Text(viewTime[0])
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(top:10.0),
                child: Row(
                  children: [
                    SizedBox(width: 25.0,),
                    Icon(Icons.timer,),
                    SizedBox(width: 20.0,),
                    Text(viewTime[1])
                  ],
                )
            ),
            Container(
              margin: EdgeInsets.only(top:10.0, left: 30.0, right: 30.0),
                child: DataTimeButton
            ),
            Container(
                margin: EdgeInsets.only(top:10.0, left: 30.0, right:30.0, bottom: 20.0),
                child: Center(
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DeleteButton,
                      SizedBox(width: 25.0,),
                      StartButton
                    ],
                  ),
                )
            ),
             Center(
                child:  Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  SizedBox(
                    width: 250,
                    height: 20,
                    child: LinearProgressIndicator(
                    value: this._value,
                    backgroundColor: Colors.cyan[100],
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.green),
                    ),
                  ),
                  SizedBox(width:10, height: 10),
                  Text(
                    "process: " + (this._value * 100).round().toString()+ "%",
                    style: TextStyle(fontSize: 20),
                  ),
                ])
             ),
            Container(
              child: Text(
                'nội dung của dkfkfn sfkjá fdo', style: TextStyle(color: Colors.grey),
              )
            )
          ],
        )
      );
  }
}