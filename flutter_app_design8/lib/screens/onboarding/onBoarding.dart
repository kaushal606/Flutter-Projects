import 'package:flutter/material.dart';
import 'package:flutter_app_design8/screens/onboarding/components/onboard_page.dart';
import 'package:flutter_app_design8/screens/onboarding/components/pageViewIndicator.dart';
import 'package:flutter_app_design8/screens/onboarding/data/onboard_page_data.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app_design8/providers/colorProvider.dart';


class OnBoarding extends StatelessWidget {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    ColorProvide colorProvider = Provider.of<ColorProvide>(context);
    return Stack(
      children: <Widget>[
        PageView.builder(
          controller: pageController,
          //physics: NeverScrollableScrollPhysics(),
          itemCount: onboardData.length,
          itemBuilder: (context,index) {
            return OnboardPage(
              pageController: pageController,
              pageModel: onboardData[index],
            );
          },
        ),
        Container(
          width: double.infinity,
          height: 80,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text('fun with',
                    style: Theme.of(context).textTheme.title.copyWith(color: colorProvider.color),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Text('skip',
                    style: TextStyle(color: colorProvider.color),
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
              padding: const EdgeInsets.only(bottom: 80.0, left: 40),
            child: PageViewIndicator(
              controller: pageController,
              itemCount: onboardData.length,
              color: colorProvider.color,),
          ),
        )
      ],
    );
  }
}
