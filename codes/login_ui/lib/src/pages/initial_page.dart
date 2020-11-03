
import 'package:flutter/material.dart';

import 'package:login_ui/src/pages/signUp_page.dart';
import 'package:login_ui/src/pages/welcome_page.dart';


class InitialPage extends StatelessWidget {

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: [
        WelcomePage(_pageController),
        SignUpPage(_pageController),
      ],
    );
  }
}