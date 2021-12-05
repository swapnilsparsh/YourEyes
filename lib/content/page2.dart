import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:your_eyes/pages/made_by.dart';
import 'package:your_eyes/pages/splashscreen2.dart';

class PageTwo extends StatelessWidget {
  // const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(203, 105, 193, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30.0),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                'Your Eyes',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'OpenSans',
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(
                top: 20.0,
                bottom: 5.0,
                left: 20.0,
                right: 30.0,
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset('assets/images/braille.png'),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Text(
                'Currency Detection',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'OpenSans',
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Spacer(),
          // Column(
          //   children: [
          //     Container(
          //       padding: new EdgeInsets.only(
          //         bottom: 10.0,
          //         left: 20.0,
          //         right: 30.0,
          //       ),
          //       child: Card(
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(10.0),
          //         ),
          //         color: Color.fromRGBO(23, 24, 31, 1),
          //         elevation: 5,
          //         child: Column(
          //           mainAxisSize: MainAxisSize.min,
          //           children: [
          //             Padding(
          //               padding: EdgeInsets.all(10.0),
          //               child: Align(
          //                 alignment: Alignment.centerLeft,
          //                 child: Text(
          //                   'Braille Code Includes:',
          //                   textAlign: TextAlign.left,
          //                   style: TextStyle(
          //                     fontSize: 20,
          //                     fontFamily: 'OpenSans',
          //                     decoration: TextDecoration.none,
          //                     color: Colors.white,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             Padding(
          //               padding: EdgeInsets.only(
          //                 top: 5.0,
          //                 left: 20.0,
          //                 right: 5.0,
          //                 bottom: 10.0,
          //               ),
          //               child: Align(
          //                 alignment: Alignment.centerLeft,
          //                 child: Text(
          //                   '- Eight-dot braille \n- Letters \n- Formatting \n- Punctuation \n- Contractions',
          //                   textAlign: TextAlign.left,
          //                   style: TextStyle(
          //                     fontSize: 18,
          //                     fontFamily: 'OpenSans',
          //                     decoration: TextDecoration.none,
          //                     color: Colors.white,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          SizedBox(height: 20.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(23, 24, 31, 1), // background
                onPrimary: Colors.white,
                padding: EdgeInsets.all(50.0) // foreground
                ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MySplash2(),
                ),
              );
            },
            child: Text(
              'Start Our Application',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10.0,
                height: 10.0,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 15.0,
                height: 15.0,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          MadeBy()
        ],
      ),
    );
  }

  _launchURL() async {
    const url = 'https://en.wikipedia.org/wiki/Braille';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
