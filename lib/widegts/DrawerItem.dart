import 'package:flutter/material.dart';
import 'package:keepnote/constants.dart';
class draweritem extends StatefulWidget {
  final Icon icon;
  final String title;
  draweritem({
    Key? key, // Use Key as a parameter if you want to provide a key
    required this.icon,
     required this.title,
  }) : super(key: key);

  @override
  State<draweritem> createState() => _draweritemState();
}

class _draweritemState extends State<draweritem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple.shade200.withOpacity(.3),
        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft:Radius.circular(10),)
      ),
      child: TextButton(
          // style: ButtonStyle(
          //   backgroundColor: MaterialStateProperty.all(
          //       Colors.orangeAccent.withOpacity(0.3)),
          //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //     RoundedRectangleBorder(
          //       borderRadius: BorderRadius.only(
          //           topRight: Radius.circular(50),
          //           bottomRight: Radius.circular(50)),
          //     ),
          //   ),
          // ),
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                widget.icon.icon,
                size: 28,
                color: mywhite.withOpacity(.8),
              ),
              SizedBox(
                width: 27,
              ),
              Text(
                widget.title,
                style: TextStyle(
                    color: mywhite.withOpacity(.8), fontSize: 20),
              )
            ],
          )),
    );
  }
}
