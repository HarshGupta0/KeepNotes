import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keepnote/constants.dart';
class NoteView extends StatefulWidget {
  const NoteView({super.key});

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: mybgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: mybgColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_left,color: mywhite,size: 30,))
              ],
            ),
            Row(children: [
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.pin,color: mywhite,size: 27,)),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.pencil_outline,color: mywhite,size: 27,)),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell,color: mywhite,size: 25,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.archive_outlined,color: mywhite,)),
            ],)
          ],
        ),
      ),
    ));
  }
}
