import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:my_task/footers/chat.dart';
// import 'package:my_task/footers/dashboard.dart';
// import 'package:my_task/footers/profile.dart';
// import 'package:my_task/footers/setting.dart';
import 'package:arabica_armour_mobile/lib.dart';
import 'package:go_router/go_router.dart';

class Footer2 extends StatefulWidget {
  const Footer2({super.key});

  @override
  State<Footer2> createState() => _Footer2State();
}

class _Footer2State extends State<Footer2> {
  int currentTab = 0;
  final List<Widget> screens = [
    RecentPage(),
    SplashScreen(),
    Container(),
    Container()
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = RecentPage();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, _) => Scaffold(
        body: PageStorage(bucket: bucket, child: currentScreen),
        appBar: getAppBar(),
        drawer: Drawer(backgroundColor: Colors.black,),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            context.go('/main');
          },
          child: Icon(Icons.camera),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = SplashScreen();
                            currentTab = 0;
                          });
                        },
                        icon: Icon(Icons.home),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = RecentPage();
                            currentTab = 1;
                          });
                        },
                        icon: Icon(Icons.grid_view_sharp),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = BookmarkPage();
                            currentTab = 2;
                          });
                        },
                        icon: Icon(Icons.bookmark),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = SplashScreen();
                            currentTab = 3;
                          });
                        },
                        icon: Icon(Icons.settings),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
