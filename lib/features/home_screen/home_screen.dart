import 'package:flutter/material.dart';
import 'package:sign_sight/features/home_screen/home_screen_mobile_view.dart';
import 'package:sign_sight/features/home_screen/home_screen_web_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return HomeScreenMobileView();
        } else {
          return HomeScreenWebView();
        }
      },
    );
  }
}
