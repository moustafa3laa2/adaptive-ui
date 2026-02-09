import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final bool isPrimaryColor;
  const AppButton({super.key, required this.title, this.icon,this.isPrimaryColor=true});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      width: 140.w,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: isPrimaryColor ? Color(0xff2b2d5d):Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
            Text(
              title,
              style: TextStyle(
                color: isPrimaryColor?Colors.white:Color(0xff2b2d5d),
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              icon,
              color:isPrimaryColor? Colors.white:Color(0xff2b2d5d),
              size: 20.r,
            ),
          ],
        ),
      ),
    );
  }
}
