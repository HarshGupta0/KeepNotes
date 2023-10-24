import 'package:flutter/material.dart';
import 'package:keepnote/SideMenuBar.dart';
import 'package:keepnote/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: true,
      key: _drawerkey,
      drawer: SideMenu(),
      backgroundColor: mybgColor,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 10,left: 10),
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
                        blurRadius: 2
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      _drawerkey.currentState?.openDrawer();
                      }, icon: Icon(Icons.menu,color: mywhite,size: 30,)),
                    Center(child: Text("Search Your Note",style: TextStyle(fontSize: 18,color: Colors.grey),),),
                    Row(children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.grid_view,color: mywhite,size: 28)),
                      SizedBox(width: 8,),
                      CircleAvatar(radius: 17,)
                    ],)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("ALL",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: mywhite.withOpacity(.3)),),
                ],
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
