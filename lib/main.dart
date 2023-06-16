import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String imagePath = 'images/image.png';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: GestureDetector(
            onScaleUpdate: (ScaleUpdateDetails details) {
              // Scale factor obtained from the gesture
              double scaleFactor = details.scale;

              //Scaling can be done here
            },
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          imagePath,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Button action
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      child: Text('Upload'),
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
