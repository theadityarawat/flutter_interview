import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String imagePath = 'images/image.png'; // Replace with the path to your image

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: GestureDetector(
            onScaleUpdate: (ScaleUpdateDetails details) {

              double scaleFactor = details.scale;
            },
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: constraints.maxHeight / 3,
                      bottom: constraints.maxHeight / 3,
                      left: constraints.maxWidth / 3,
                      right: constraints.maxWidth / 3,
                      child: Image.asset(
                        imagePath,
                      ),
                    ),
                    Positioned(
                      child: ElevatedButton(
                        onPressed: () {
                          // Button action
                        },
                        child: Text('Upload'),
                      ),
                      bottom: 20,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
