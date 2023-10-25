import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:keepnote/SideMenuBar.dart';
import 'package:keepnote/constants.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: true,
      key: _drawerKey,
      drawer: SideMenu(),
      backgroundColor: mybgColor,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 10, left: 10),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                  color: mycardColor,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: myblack,
                      spreadRadius: 1 * 0.7,
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        _drawerKey.currentState?.openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        color: mywhite,
                        size: 30,
                      ),
                    ),
                    Center(
                      child: Text(
                        "Search Your Note",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.grid_view,
                            color: mywhite,
                            size: 28,
                          ),
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(radius: 17),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "ALL",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: mywhite.withOpacity(0.3),
                      ),
                    ),
                  ],
                ),
              ),
              Container(child: StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children:const [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Text("lollllll",style: TextStyle(color: Colors.white),),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child:Text("lollllll",style: TextStyle(color: Colors.white),),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Text("lollllll",style: TextStyle(color: Colors.white),),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child:Text("lollllll",style: TextStyle(color: Colors.white),),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 4,
                    mainAxisCellCount: 2,
                    child:Text("lollllll",style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}




