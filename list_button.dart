import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListButton extends StatefulWidget {
  @override
  State<ListButton> createState() => _ListButtonState();
}

class _ListButtonState extends State<ListButton> {
  var tiencuoc;
  int sodu = 100;
  var a; //bien luu gia tri khi user click chon image nao? de tu do co gia tri de so sanh xem thang hay thua

  List<String> assets = [
    'assets/images/calabash.png',
    'assets/images/chicken.png',
    'assets/images/shrimp.png',
    'assets/images/crab.png',
    'assets/images/deer.png',
    'assets/images/fish.png',
  ];
  Random random = Random();
  String? random1;
//khai bao co the null hoac ko null
  String? random2;
//khai bao co the null hoac ko null
  String? random3;
//khai bao co the null hoac ko null
  void _random() {
    setState(() {
      //***
      random1 = assets[random.nextInt(assets.length)];
      random2 = assets[random.nextInt(assets.length)];
      random3 = assets[random.nextInt(assets.length)];
    });
  }

  void _tinhtien() {
    setState(() {
      if (sodu == 0) {
        print('So du khong du');
      } else if (sodu > 0) {
        if (sodu < int.parse(tiencuoc!))
          print('Khong du tien cuoc');
        else {
          if (a != random1 && a != random2 && a != random3) {
            sodu = sodu - int.parse(tiencuoc);
          } else if (a == random1 || a == random2 || a == random3) {
            sodu = sodu + int.parse(tiencuoc);
          } else if (a == random1 && a == random2 && a == random3) {
            sodu = 3 * int.parse(tiencuoc);
          } else if ((a == random1 && a == random2) ||
              (a == random1 && a == random3) ||
              (a == random2 && a == random3)) {
            sodu = 2 * int.parse(tiencuoc);
          }
        }
      } //    {}
    });
  }

  void _reload() {
    setState(() {
      a = null;
      tiencuoc = null;
    });
  }

  @override
  void initState() {
    //***
    _random();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
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
                                return Colors.white60;
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
        ),
        Center(
          child: Container(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          onChanged: (_tiencuoc) {
                            tiencuoc = _tiencuoc;
                            //print(tiencuoc);
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          print(tiencuoc);
                        },
                        child: Text(
                          'Cược',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  height: 40,
                  child: Text(
                    'Số dư:' + ' ' + sodu.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: (() {
                    for (int i = 0; i < 10000; i++) {
                      Future.delayed(Duration(milliseconds:300), () {
                        _random();
                      });
                      print(i);
                    }
                    ;
                    _tinhtien();
                    print(sodu);
                    print(random1);
                    print(random2);
                    print(random3);
                    _reload();
                  }),
                  child: Text(
                    'Xóc',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 100,
                        width: 100,
                        child: Image.asset(random1!),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 100,
                        width: 100,
                        child: Image.asset(random2!),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 100,
                        width: 100,
                        child: Image.asset(random3!),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
