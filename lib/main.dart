import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_sight/sign_sight.dart';

void main() async{
 await ScreenUtil.ensureScreenSize();
  runApp(const SignSight());
}
