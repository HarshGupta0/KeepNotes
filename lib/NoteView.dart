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
        actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                  children: [BackButton(color: Colors.white,),],
                ),
                  Row(
                    children: [
                      IconButton(onPressed:(){}, icon:Icon(CupertinoIcons.pin,color: mywhite,),),
                      IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell_solid,color: mywhite,),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.archive,color: mywhite,),),
                    ],
                  ),
                ],
              )
        ],
      ),
    ));
  }
}
