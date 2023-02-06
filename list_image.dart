import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ListImage extends StatefulWidget {
  const ListImage({super.key});

  @override
  State<ListImage> createState() => _ListImageState();
}

class _ListImageState extends State<ListImage> {

  List<String> assets = [
    'assets/images/calabash.png',
    'assets/images/chicken.png',
    'assets/images/crab.png',
    'assets/images/deer.png',
    'assets/images/fish.png',
    'assets/images/shrimp.png',
  ];
  var a; //bien luu gia tri khi user click chon image nao? de tu do co gia tri de so sanh xem thang hay thua
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 55),
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10, top: 15),
            child: Row(
              children: <Widget>[
                Container(
                  height: 70,
                  width: 70,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        //overlayColor:
                        //getColor(Colors.white54, Colors.tealAccent),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.focused)) {
                              return Colors.white60;
                            }
                            return Colors.greenAccent;
                          },
                        ),
                      ),
                      onPressed: () {
                        a = assets[0];
                        print(a);
                      },
                      child: Image.asset(assets[0])),
                ),
                SizedBox(width: 30),
                Container(
                  height: 70,
                  width: 70,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white54),
                      onPressed: () {
                        a = assets[1];
                        print(a);
                      },
                      child: Image.asset(assets[1])),
                ),
                SizedBox(width: 30),
                Container(
                  height: 70,
                  width: 70,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white54),
                      onPressed: () {
                        a = assets[2];
                        print(a);
                      },
                      child: Image.asset(assets[2])),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(
              right: 10,
            ),
            child: Row(
              children: <Widget>[
                Container(
                  height: 70,
                  width: 70,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white54),
                      onPressed: () {
                        a = assets[3];
                        print(a);
                      },
                      child: Image.asset(assets[3])),
                ),
                SizedBox(width: 30),
                Container(
                  height: 70,
                  width: 70,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white54),
                      onPressed: () {
                        a = assets[4];
                        print(a);
                      },
                      child: Image.asset(assets[4])),
                ),
                SizedBox(width: 30),
                Container(
                  height: 70,
                  width: 70,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white54),
                      onPressed: () {
                        a = assets[5];
                        print(a);
                      },
                      child: Image.asset(assets[5])),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
