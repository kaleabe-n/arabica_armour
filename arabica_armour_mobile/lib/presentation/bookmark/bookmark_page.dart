import 'package:flutter/material.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({super.key});

  @override
  State<BookmarkPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 6,
            itemBuilder: (BuildContext context, index) {
              return Card(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.14,
                        height: MediaQuery.of(context).size.width * 0.1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/img.jpg"))),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Image Data Generation"),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("has disease"),
                            ],
                          )
                        ],
                      ),
                    )
                  ]));
            }),
        // bottomNavigationBar: BottomNavigationBar(
        //     backgroundColor: Colors.green[300],
        //     items: [
        //       BottomNavigationBarItem(
        //           icon: const Icon(Icons.search),
        //           activeIcon: const Icon(
        //             Icons.search,
        //             color: Colors.purple,
        //           ),
        //           label: "Search",
        //           backgroundColor: Colors.amber[400]),
        //       BottomNavigationBarItem(
        //           icon: const Icon(Icons.camera),
        //           label: "Camera",
        //           activeIcon: const Icon(
        //             Icons.camera,
        //             color: Colors.purple,
        //           ),
        //           backgroundColor: Colors.amber[400]),
        //       BottomNavigationBarItem(
        //           icon: const Icon(Icons.settings),
        //           label: "Setting",
        //           activeIcon: const Icon(
        //             Icons.search,
        //             color: Colors.purple,
        //           ),
        //           backgroundColor: Colors.amber[400])
        //     ],
        //     currentIndex: 0)
            );
  }
}