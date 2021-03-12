import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';
import 'detail_job.dart';
class PageCalendar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PageCalendarState();
  }

}

class _PageCalendarState extends State<PageCalendar>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     body: ListView(
       children: [
         PreventCard(
           text:
           "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
           image: "assets/images/a5.png",
           title: "Wear face mask",
         ),
         PreventCard(
           text:
           "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
           image: "assets/images/a5.png",
           title: "Wear face mask",
         ),
         PreventCard(
           text:
           "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
           image: "assets/images/a5.png",
           title: "Wear face mask",
         ),
         PreventCard(
           text:
           "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
           image: "assets/images/a5.png",
           title: "Wear face mask",
         ),
         PreventCard(
           text:
           "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
           image: "assets/images/a5.png",
           title: "Wear face mask",
         ),
         PreventCard(
           text:
           "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
           image: "assets/images/a5.png",
           title: "Wear face mask",
         ),
         PreventCard(
           text:
           "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
           image: "assets/images/a5.png",
           title: "Wear face mask",
         ),
         PreventCard(
           text:
           "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
           image: "assets/images/a5.png",
           title: "Wear face mask",
         ),
       ],
     )
   );
  }
}
class PreventCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const PreventCard({
    Key key,
    this.image,
    this.title,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 10.0, right: 10.0),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 10.0),
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 24,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
            Image.asset(image),
            Positioned(
              left: 100,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 136,
                width: MediaQuery.of(context).size.width -140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      child: Text(title,  style: TextStyle(fontSize: 14.0),),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => DetailJob(data: title,)
                          ),
                        );
                      },
                    ),
                    Expanded(
                      child: Text(
                        text,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset("assets/icons/forward.svg"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
