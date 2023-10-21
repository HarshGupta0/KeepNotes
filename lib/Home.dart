import 'package:flutter/material.dart';
import 'package:keepnote/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mybgColor,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                  color: mycardColor,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: myblack,
                        spreadRadius: 1*.7,
                        blurRadius: 3
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: mywhite,))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
