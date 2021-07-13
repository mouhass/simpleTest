

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'secondScreen.dart';


void main() {
  runApp(MaterialApp(
    home:Home(),
  debugShowCheckedModeBanner: false,
 

),
  );
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  FutureBuilder(
      // Replace the 3 second delay with your initialization code:
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(home: MyHomePage(), debugShowCheckedModeBanner: false,);
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            home: MyHomePage(),debugShowCheckedModeBanner: false,
          );
        }
      },
    );
  }
}
