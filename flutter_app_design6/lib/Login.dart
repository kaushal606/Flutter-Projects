import 'package:flutter/material.dart';
import 'package:flutter_app_design6/ImageCliper.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: OnBoardingImageClipper(),
                  child: Container(
                    width: double.infinity,
                    height: 500,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: -20,
                            left: -23,
                            bottom: -80,
                            child: Image.asset('assets/woman.jpg',fit: BoxFit.cover,)
                        ),
                        Positioned(
                          left: 0,
                            right: 0,
                            bottom:0,
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
                                  end: Alignment.topCenter
                                ),
                              ),
                            )
                        ),
                        Positioned(
                          left: 40,
                            top: 60,
                            child: Text("NXT",
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic
                              ),
                            ),
                        ),
                        Positioned(
                          left: 30,
                            bottom: 120,
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Tattoo",
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w900
                                    )
                                ),
                                TextSpan(
                                    text: "Studio",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic
                                    ),
                                ),
                              ],
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 30,
                    bottom: 0,
                    child: Text("LOGIN", style: TextStyle(
                      fontSize: 40,
                      color: Color(0xFFCBCBCB),
                      fontWeight: FontWeight.w900
                    ),
                    ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            buildTextbox("Username", Icons.person),
            SizedBox(height: 20,),
            buildTextbox("Password",Icons.panorama_fish_eye ),
            SizedBox(height: 28,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 42.0),
                  child: FlatButton(onPressed: () {},
                      child: Text("SignUp",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black),
                      ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildTextbox(hint,icon) {
    return Container(
      width: double.infinity,
      height: 58,
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Color(0xFFE7E7E7),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0,4),
          )
          ],
    ),
      child: Padding(padding: EdgeInsets.only(top: 4,left: 24,right: 16),
        child: TextField(
          decoration: InputDecoration(
            hintText: hint,
                hintStyle: TextStyle(
                fontSize: 16,
          ),
            enabledBorder: InputBorder.none,
            suffixIcon: Icon(
              icon,
            ),
          ),
        ),
      ),
    );
  }
}
