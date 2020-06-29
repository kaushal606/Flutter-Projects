import 'package:flutter/material.dart';
import 'package:flutter_app_design6/ButtonClipper.dart';

class BoardingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OnBoardingButtonClipper(),
      child: Container(
        width: 135,
        height: 135,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF9F3CB2),
                Color(0xFFF26567)
              ],
              stops: [
                0.4,
                1.0
              ]
          )
        ),
        child: Center(
          child: Padding(
              padding: EdgeInsets.only(left: 45),
            child: Icon(
                Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
