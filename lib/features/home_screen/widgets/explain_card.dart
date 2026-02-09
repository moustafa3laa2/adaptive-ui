import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExplainCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  const ExplainCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      height: 150.w,
      width: 200.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      child: Column(
        spacing: 10,
        children: [
          CircleAvatar(
            minRadius: 20.r,
            backgroundColor: Color(0xfff5f7ff),
            child: Icon(icon, color: Color(0xff2b2d5d)),
          ),
          Text(
            title,
            style: TextStyle(
              color: Color(0xff2b2d5d),
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Flexible(
            child: Text(
              subTitle,
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
