import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  final List<String> strings;
  final double screenWidth;

  BulletList(this.strings, this.screenWidth);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: strings.map((str) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\u2022',
                style: TextStyle(
                  fontSize: screenWidth / 25,
                  // height: 1.55,
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Expanded(
                child: Container(
                  child: Text(
                    str,
                    textAlign: TextAlign.left,
                    // softWrap: true,
                    style: TextStyle(
                      fontSize: screenWidth / 25,
                      color: Colors.black.withOpacity(0.8),
                      // height: 1.50,
                    ),
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
