import 'package:flutter/material.dart';

const kTextStyle = TextStyle(fontSize: 18,fontWeight: FontWeight.bold);

const kDateStyle = TextStyle(fontSize: 11,fontWeight: FontWeight.bold);

const kTextStyle2 = TextStyle(fontSize: 22,fontWeight: FontWeight.bold);

const kDateStyle2 = TextStyle(fontSize: 20,fontWeight: FontWeight.bold);

const kTitle = TextStyle(fontSize: 25,fontWeight: FontWeight.w900);

Widget buildContainer({Widget? child, double? height, double? width,Color ?colour}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: colour,
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    ),
    padding: const EdgeInsets.all(5),
    child: child,
  );
}
Widget buildContainerOfDetails({Widget? child, double? height, double? width,Color ?colour}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: colour,
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    ),
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(10),
    child: child,
  );
}
Widget buildContainerOfDate({Widget? child}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.black45,
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    ),
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.all(15),
    child: child,
  );
}