import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HowItWorkCard extends StatelessWidget {
  const HowItWorkCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      height: 195.w,
      width: 280.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "How It Works",
            style: TextStyle(
              color: Color(0xff2b2d5d),
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "1.Point your camera at sign language gestures.",
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            "2.Press and hold the record button to capture signs.",
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            "3.View the translation as text or listen to voice output.",
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            "4.All translations are saved in your History for future reference.",
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
