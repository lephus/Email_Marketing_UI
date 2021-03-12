import 'package:email_marketing/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}): super(key: key);
  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _TextControllerUserName = TextEditingController();
  final TextEditingController _TextControllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final userName = TextField(
      keyboardType: TextInputType.text,
      controller: _TextControllerUserName,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Enter your UserName...',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final Password = TextField(
      autofocus: false,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      controller: _TextControllerPassword,
      decoration: InputDecoration(
        hintText: 'Enter your Password...',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final loginButton = new FlatButton(
      child: const Text('Sign In'),
      textColor: Colors.white,
      color: Theme.of(context).primaryColor,
      splashColor: Colors.white,

      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      onPressed: () {
        // ignore: unrelated_type_equality_checks
        if(_TextControllerPassword.toString()!="" && _TextControllerUserName!=""){
          Navigator.pop(context, _TextControllerUserName.text+"#"+_TextControllerPassword.text);
        }else{
          _showMaterialDialogText();
        }
      },
    );
    final forgotLabel = FlatButton(
      child: Text(
        'Contact support !',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        _showMaterialDialog();
      },
    );
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(1, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-1.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(1.3, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-2.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(1.5, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/clock.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: userName
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: Password
                            )
                          ],
                        ),
                      )),
                      SizedBox(height: 30,),
                      FadeAnimation(2, Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:  Color.fromRGBO(143, 148, 251, .6)
                        ),
                        child: loginButton
                      )),
                      SizedBox(height: 70,),
                      forgotLabel
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
  _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
          title: new Text("Hỗ Trợ Người Dùng", style:TextStyle(color: Colors.blue)),
          shape: RoundedRectangleBorder(
              side:  BorderSide(color: Colors.green,width: 3),
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          content: new Text("Bạn vui lòng liên hệ Admin để được hỗ trợ !"),
        )
    );
  }
  _showMaterialDialogText() {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
          title: new Text("Lỗi", style:TextStyle(color: Colors.red),),
          shape: RoundedRectangleBorder(
              side:  BorderSide(color: Colors.green,width: 3),
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          content: new Text("Thông tin không đúng!"),
        )
    );
  }
}