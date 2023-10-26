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

      ),
    ));
  }
}
