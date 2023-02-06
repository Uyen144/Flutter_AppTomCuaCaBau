import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'list_button.dart';
import 'list_image.dart';

class NavScreen extends StatelessWidget {
  const NavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Center(
        //   child: Container(
        //       padding: EdgeInsets.only(right: 10, top: 50, left: 10),
        //       child: ListImage()),
        // ),
        Center(
          child: Container(
             //decoration: BoxDecoration(color: Colors.grey),
              padding: EdgeInsets.only(right: 10, top: 50, left: 10),
              child: ListButton()),
        ),
      ],
    );
  }
}
