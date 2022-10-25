import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Styling Demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(appTitle),
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Square(
                  color: Colors.red,
                  squareheight: 100,
                  squarewidth: 100,
                ),
                SizedBox(
                  height: 30,
                ),
                Square(
                  color: Colors.yellow,
                  squareheight: 100,
                  squarewidth: 100,
                ),
                SizedBox(
                  height: 30,
                ),
                Square(
                  color: Colors.blue,
                  squareheight: 100,
                  squarewidth: 100,
                ),
                SizedBox(
                  height: 30,
                ),

                //MyCustomForm(),
              ],
            ),
          )),
    );
  }
}

class Square extends StatelessWidget {
  double squareheight;
  double squarewidth;
  Color color;
  Square(
      {required this.color,
      required this.squareheight,
      required this.squarewidth,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: squareheight,
      width: squarewidth,
      color: color,
    );
  }
}
