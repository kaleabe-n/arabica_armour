import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String path;

  const CardWidget(this.path, {super.key});

  String getName() {
    List p = path.split('/');
    return p[p.length - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(path), fit: BoxFit.cover)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(9, 1, 0, 0),
                  child: Text(
                    getName().split('.')[0],
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'aerial',
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.bookmark_outline,
                    color: Color.fromRGBO(1, 155, 113, 1),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}