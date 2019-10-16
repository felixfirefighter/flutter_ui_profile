import 'package:flutter/material.dart';
import 'package:flutter_ui_profile/components/gradient_button.dart';
import 'package:flutter_ui_profile/components/header.dart';

class ProfileScreen extends StatelessWidget {
  // 6F43B9
  // 874590

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Header(),
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(32),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: Text(
                          'Alicia Owen',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32.0,
                          vertical: 8,
                        ),
                        child: Text(
                          'Experimental electronic music pioneer. Half of duo Way Out West.',
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GradientButton(
                              gradient: LinearGradient(colors: [
                                Color(0xffB24592),
                                Color(0xffF15F79),
                              ]),
                              child: Text(
                                'FOLLOWING',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlineButton(
                              borderSide: BorderSide(
                                color: Color(0xffB24592),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              color: Color(0xffB24592),
                              textColor: Color(0xffB24592),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Message'.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned.fill(
              top: 130,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.red,
                    backgroundImage: NetworkImage(
                      'https://randomuser.me/api/portraits/women/82.jpg',
                    ),
                  ),
                  padding: EdgeInsets.all(4),
                  decoration: new BoxDecoration(
                    color: Colors.white, // border color
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
