import 'package:email_marketing/Screens/page_calendar.dart';
import 'package:email_marketing/Screens/page_user_infor.dart';
import 'package:email_marketing/consts/my_icons.dart';
import 'package:flutter/material.dart';

import 'page_home.dart';

class EmailMarketingScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EmailMarketingState();
  }
}
class _EmailMarketingState extends State{
  var refreshKey = GlobalKey<RefreshIndicatorState>();
  int _selectedPageIndex = 1;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      widgetUserInFor(_selectedPageIndex),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 0.01,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: kBottomNavigationBarHeight * 0.98,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
              onTap: _selectPage,
              backgroundColor: Colors.grey[200],
              unselectedItemColor: Theme
                  .of(context)
                  .textSelectionColor,
              selectedItemColor:  Colors.blue[800],
              currentIndex: _selectedPageIndex,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(MyAppIcons.process),
                    // ignore: deprecated_member_use
                    title: Text('Schedules', style: TextStyle(color: Colors.blue[800]),),
                  backgroundColor: Colors.grey
                ),

                BottomNavigationBarItem(
                    icon: Icon(MyAppIcons.process),
                    // ignore: deprecated_member_use
                    title: Text('', style: TextStyle(color:  Colors.blue[800]),),
                  backgroundColor: Colors.grey
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      MyAppIcons.user,
                    ),
                    // ignore: deprecated_member_use
                    title: Text('User', style: TextStyle(color:  Colors.blue[800]),),
                  backgroundColor: Colors.grey
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          hoverElevation: 10,
          splashColor: Colors.grey[400],
          tooltip: 'home',
          elevation: 2,
          child: Icon(MyAppIcons.home),
          onPressed: () =>
              setState(() {
                _selectedPageIndex = 1;
              }),
        ),
      ),
    );
  }
  dynamic widgetUserInFor(int index){
    if (index == 2) { // user infor
      return PageUserInfor();
    }

    if(index == 1){
      return PageHome();
    }

    if (index == 0) { // calendar
      return PageCalendar();
    }
  }
}
