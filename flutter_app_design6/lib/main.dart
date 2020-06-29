import 'package:flutter/material.dart';
import 'package:flutter_app_design6/BoardingButton.dart';
import 'package:flutter_app_design6/ImageCliper.dart';
import 'package:flutter_app_design6/Login.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: OnBoardingImageClipper(),
            child: Container(
              width: double.infinity,
              height: 650,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: -390,
                      top: -340,
                      bottom: 0,
                      child: Image.asset('assets/woman.jpg',
                        fit: BoxFit.cover,
                        width: 820,
                        height: 1470,
                      )
                  ),
                  Positioned(
                    left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: double.infinity,
                        height: 340,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFFE2B0FF).withOpacity(.5),
                                Color(0xFF9F44D3).withOpacity(.02),
                          ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          )
                        ),
                      )
                  ),
                  Positioned(
                    right: 40,
                      bottom: 180,
                      child: Text(
                        "XST",
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic
                        ),
                      )
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Tattoo",
                          style: TextStyle(
                            fontSize: 33,
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w900
                          )
                        ),
                        TextSpan(
                          text: "Studio",
                          style: TextStyle(
                            fontSize: 26,
                            color: Color(0xFF4A4A4A),
                            fontWeight: FontWeight.w300
                          )
                        )
                      ]
                    ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
                },
                child: BoardingButton(),
              )

            ],
          )
        ],
      ),
    );
  }
}
