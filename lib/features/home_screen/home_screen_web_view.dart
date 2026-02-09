import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_sight/core/custom_app_bar.dart';
import 'package:sign_sight/features/home_screen/widgets/app_button.dart';
import 'package:sign_sight/features/home_screen/widgets/custom_bottom_navigation_bar.dart';
import 'package:sign_sight/features/home_screen/widgets/custom_list_view.dart';
import 'package:sign_sight/features/home_screen/widgets/how_it_work_card.dart';

class HomeScreenWebView extends StatelessWidget {
  const HomeScreenWebView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Color(0xfff5f7ff),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 30.h,
            children: [
              Text(
                "SignSight",
                style: TextStyle(
                  color: Color(0xff2b2d5d),
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Breaking communication barriers with real-time sign language translation",
                style: TextStyle(fontSize: 8.sp, fontWeight: FontWeight.bold),
              ),
              AppButton(
                title: "Start Translating",
                icon: Icons.camera_alt_outlined,
              ),
              SizedBox(
                width: 280.w,
                height: 250.h,
                child: CustomListView(scrollDirection: Axis.horizontal,),

              ),
              HowItWorkCard(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                AppButton(title: "Start Translating"),
                AppButton(
                  title: "View History",
                  icon: Icons.history,
                  isPrimaryColor: false,
                ),
              ],)
            ],
          ),

        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
