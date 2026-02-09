import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [

      BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
      BottomNavigationBarItem(icon: Icon(Icons.camera_alt_outlined),label: "translate"),
      BottomNavigationBarItem(icon: Icon(Icons.history),label: "history")

    ]);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70);
}
