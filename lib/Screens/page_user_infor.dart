import 'package:email_marketing/Screens/page_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PageUserInfor extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width:MediaQuery.of(context).size.width,
              height: 200.0,
              child:  Image.asset('assets/images/bgUser.jpg',fit: BoxFit.fill,),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              width:MediaQuery.of(context).size.width,
              height: 100.0,
              child:  Image.asset('assets/images/user.png',width: 100,height: 100,),
            ),
            Container(
              padding: EdgeInsets.only(top: 120.0),
              child: Text('NGUYỄN VĂN TÝ', style: TextStyle(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(top: 140.0),
              child: Text('nguyevanty@gmail.com', style: TextStyle(fontSize: 13.0, color: Colors.white),),
            )
          ],
        ),
        new Container(
            margin: EdgeInsets.only(top: 20.0),
            padding: const EdgeInsets.only(left: 30.0, right: 20.0, top: 10.0, bottom: 10.0),
            color: Colors.black12,
            child:Row(
                children: [
                  new Icon(Icons.phone, size: 30.0, color: Colors.lightBlueAccent,),
                  SizedBox(width: 25.0,),
                  new Text('032 3433 543')
                ],
              )
          ),
          new Container(
              margin: const EdgeInsets.only(top:10.0),
              padding: const EdgeInsets.only(left: 30.0, right: 20.0, top: 10.0, bottom: 10.0),
              color: Colors.black12,
              child:Row(
                children: [
                  new Icon(Icons.room, size: 30.0, color: Colors.green,),
                  SizedBox(width: 25.0,),
                  new Text('23 Huỳnh Phúc Khán - Ba Đình - Hà Nội')
                ],
              )
          ),
          new Container(
              margin: const EdgeInsets.only(top:10.0),
              padding: const EdgeInsets.only(left: 30.0, right: 20.0, top: 10.0, bottom: 10.0),
              color: Colors.black12,
              child:Row(
                children: [
                  new Icon(Icons.assistant, size: 30.0, color: Colors.deepPurple,),
                  SizedBox(width: 25.0,),
                  new Text('Admin')
                ],
              )
          ),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:25),
              child: Text('email marketing version 1.0.0 @ 2021', style: TextStyle(color: Colors.black26),)
          ),
           Container(
            margin: EdgeInsets.all(25),
            child: FlatButton(
              child: Text('Log Out', style: TextStyle(fontSize: 14.0),),
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () async{
                final notifulogin = await Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => LoginScreen()
                  ),
                );
                if (notifulogin != null) {
                  print (notifulogin);
                  // widget.storage.writeData(notifulogin);
                  // fetchData(notifulogin);
                  // BlocProvider.of<NotifyBloc>(context).add(
                  //     NotifyEventRequested(student: notifulogin)

                }
              },
            ),
          )
        ],
      ),
    );
  }

}