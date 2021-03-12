import 'package:email_marketing/repositories/email_marketing_repositoty.dart';
import 'package:flutter/material.dart';

import 'Screens/email_markting_screen.dart';
import 'constants.dart';
void main() {
  final EmailMarketingRepository emailMarketingRepository = EmailMarketingRepository();
  //other blocs ?
  runApp(
    MaterialApp(
      title: 'Notify-DAU',
      home: MyApp(emailMarketingRepository: emailMarketingRepository),
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          fontFamily: "Poppins",
          textTheme: TextTheme(
            body1: TextStyle(color: kBodyTextColor),
          )),
    ),
  );
}

class MyApp extends StatelessWidget {
  final EmailMarketingRepository emailMarketingRepository;
  MyApp({Key key, @required this.emailMarketingRepository}):
        assert(emailMarketingRepository != null),super(key:key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Email Marketing',
        home: EmailMarketingScreen(),
    );
  }
}

