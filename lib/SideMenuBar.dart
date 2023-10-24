import 'package:flutter/material.dart';
import 'package:keepnote/constants.dart';

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
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Colors.orangeAccent.withOpacity(0.3)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.lightbulb_outline,
                      size: 28,
                      color: mywhite.withOpacity(.8),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Notes",
                      style: TextStyle(
                          color: mywhite.withOpacity(.8), fontSize: 20),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
