import 'package:flutter/material.dart';
import 'package:keepnote/constants.dart';
import 'package:keepnote/widegts/DrawerItem.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: mybgColor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Text(
                " Goggle Keep",
                style: TextStyle(
                    fontSize: 26, fontWeight: FontWeight.bold, color: mywhite),
              ),
            ),
            Divider(
              color: mywhite.withOpacity(.3),
            ),
            SizedBox(height: 5,),
           draweritem(icon:Icon(Icons.lightbulb_outline), title:"Note"),
            SizedBox(height: 10,),
            draweritem(icon:Icon(Icons.send_and_archive_rounded), title:"Archive"),
            SizedBox(height: 10,),
            draweritem(icon:Icon(Icons.settings_outlined), title:"Settings"),
          ],
        ),
      ),
    );
  }
}
