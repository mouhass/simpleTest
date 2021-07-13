import 'dart:async';

import 'package:date_count_down/date_count_down.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:premierprojet/pageSpeciale.dart';
import 'package:premierprojet/termine.dart';
import 'package:premierprojet/prochaines.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  @override
  SecondScreen createState() => SecondScreen();
}

class SecondScreen extends State<MyHomePage> {

  List<Widget> _widgetOptions = <Widget>[pageSpeciale(),Text('hello world1'),Text('hello world2'),Text('hello world3'),Text('hello world4')];
  int _currentIndex=0;
  void _onItemTap(int index){
    setState(() { _currentIndex = index; });}

  Color favoriteColor = Colors.grey;
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar( automaticallyImplyLeading: false,title: Image(image: AssetImage('assets/Logo@1X.png')),
        backgroundColor: Colors.white,
        actions: [IconButton(icon: Icon(Icons.add_alert_outlined,color: Colors.lightBlue,),onPressed: () => {},),
        IconButton( icon: Icon(Icons.account_circle_sharp, color: Colors.orange,),
        onPressed: () {}, )] ),
       
        body:    _widgetOptions.elementAt(_currentIndex),
        


        bottomNavigationBar: Container( 
          width: 414, height: 88,                                            
        decoration: BoxDecoration(                                                   
          borderRadius: BorderRadius.only(                                           
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),            
          boxShadow: [                                                               
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),       
          ],                                                                         
        ),                                                                           
        child: ClipRRect(                                                            
          borderRadius: BorderRadius.only(                                           
          topLeft: Radius.circular(30.0),                                            
          topRight: Radius.circular(30.0),                                           
          ),                                                                         
          child: BottomNavigationBar( 
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,                                            
            items: <BottomNavigationBarItem>[                                       
              BottomNavigationBarItem(title: Container(height: 8), icon: Image.asset('assets/Accueil@1X.png',), activeIcon: Image.asset('assets/accueil.png', ) ) ,
              BottomNavigationBarItem(title: Container(height: 15), icon: Image.asset('assets/Groupe 460@1X.png',), activeIcon: Image.asset('assets/Groupe 460@1X2.png',) ) ,
              BottomNavigationBarItem(title: Container(), icon: Image.asset('assets/image.png',), activeIcon: Image.asset('assets/image.png',) ) ,

                BottomNavigationBarItem(                                               
                icon: Icon(Icons.favorite_border,color: Colors.black), title: Text(''), activeIcon: Icon(Icons.favorite_border,color: Colors.lightBlue) ),               
              BottomNavigationBarItem(                                               
                icon: Icon(Icons.menu,color: Colors.black), title: Text(''), activeIcon: Icon(Icons.menu,color: Colors.lightBlue) ) ,              
            ], 
            onTap:(index){
                setState(() {
                  _currentIndex= index;
                });
            } ,                                                                      
          ),                                                                         
        )                                                                           
      ));
        }
      }
