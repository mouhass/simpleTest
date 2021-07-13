import 'dart:async';

import 'package:date_count_down/date_count_down.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:premierprojet/prochaines.dart';
import 'package:premierprojet/enCours.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:premierprojet/termine.dart';

class pageSpeciale extends StatefulWidget {
  @override
  nouvellePage createState() => nouvellePage();
}

class nouvellePage extends State<pageSpeciale> {
  Color favoriteColor = Colors.grey;int _currentIndex=0;String countTime = "Loading";
  Timer _timer = Timer.periodic(const Duration(seconds: 1), (timer) {});
  String imageDuCoeur= "img.png";
  Color topNavSelected1 = Colors.lightBlue ;
  Color topNavSelected2 = Colors.grey ;
  Color topNavSelected3 = Colors.grey ;

 int SelectedItem=0;
  //String NouvelCouleurDuCoeur = "image1.png";
  @override
  void initState() {super.initState(); _timer = Timer.periodic(const Duration(seconds: 1), (timer) {setState(() {});}); }
  @override
  Widget build(BuildContext context) {
        countTime = CountDown().timeLeft(DateTime.parse("2021-07-21"), "completed");
    return     Container( child: SingleChildScrollView(

                child: Column(children: [
                  
                  
                 Container(child: Wrap( spacing: 10, children: [
                //Text("Prochaines", style: TextStyle(color: Colors.lightBlue,fontSize: 17,), ),
                Container(width:90,child:IconButton(  icon: Text( "Prochaines", style: TextStyle(color: topNavSelected1)), onPressed: (){ SelectedItem=0; 
                if(topNavSelected1== Colors.grey) {
                    topNavSelected1=Colors.lightBlue;
                    topNavSelected2=Colors.grey;
                    topNavSelected3= Colors.grey;}}
                 
                 )),
                Container(width:90,child: IconButton( icon: Text("En cours", style: TextStyle(color: topNavSelected2)) ,onPressed: (){  SelectedItem=1;
                 if(topNavSelected2== Colors.grey) {
                    topNavSelected2=Colors.lightBlue;
                    topNavSelected1=Colors.grey;
                    topNavSelected3= Colors.grey;}}
                )),
                Container(width:90,child: IconButton( icon: Text("Terminés", style: TextStyle(color: topNavSelected3)) ,onPressed: (){  SelectedItem=2;
                 if(topNavSelected3== Colors.grey) {
                    topNavSelected3=Colors.lightBlue;
                    topNavSelected2=Colors.grey;
                    topNavSelected1= Colors.grey;}}
                )),
              
                  ])),

    
                     

               SelectedItem==0 ?
                 Container(child:Column(
                   children: [

                     Container(child: Row ( children: <Widget>[
                   
                    Stack(children: [

                      Positioned(left: 8, top: 29,child: ClipRRect(borderRadius: BorderRadius.circular(10.0),child:Container(color: Colors.yellow , height: 154, width: 125 ))),
                      
                  Container( child:Stack(children: [
                   ClipRRect(borderRadius: BorderRadius.circular(10.0), child: Image( image: AssetImage('assets/Rectangle 268.png'), height: 230, width: 140,fit: BoxFit.cover, ))   ,                        
                   
               Positioned(left: 83, top:40,child: IconButton(icon:Image(image: AssetImage('assets/${imageDuCoeur}')), onPressed: (){if(imageDuCoeur=="img.png"){imageDuCoeur="image1.png";}else{imageDuCoeur="img.png";}},)),

              Positioned(top: 45,left: 20,child:Image( image: AssetImage('assets/Groupe 484@1X.png'),height: 40,width:40)),
                       Positioned(top: 73,left: 34,child:Image(image: AssetImage('assets/smartWatch.png'),height: 120, width: 72,fit: BoxFit.fill,) )
                       ], )),

                    ],),

             
              Column( children: <Widget>[ 
                                  Row(children: [              
              
              //timer and the salle evolution
                ClipRRect( borderRadius: BorderRadius.circular(8.0),child: Container( height: 28,width: 140,
                      decoration: BoxDecoration(gradient: LinearGradient( begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [  Color(0XFF30A6CA),Colors.lightBlue.shade100,],)),
                      child:Row(children: [Image(image: AssetImage('assets/Icon material-timelapse.png'),width:20),Text(countTime),],)),),

                SizedBox(width: 8),

                Stack( children: [
                    ClipRRect(borderRadius:BorderRadius.circular(8.0),  child: Container(width: 70, height: 28, color: Colors.grey[300])),
                    ClipRRect(borderRadius:BorderRadius.circular(8.0), child: Container(width: 45.5,height: 28,decoration: BoxDecoration(gradient: LinearGradient( begin: Alignment.topLeft,end: Alignment.bottomRight, colors: [ Color(0XFFC772FF),Colors.white,],)),)),
                  //----------------------------------------------

                    Positioned( top:3,left: 5,child: Image(image: AssetImage('assets/Groupe 457@1X.png'),width: 20,height: 20,),),
                    Positioned( top: 4, left: 38, child: Text( '${((45.5 / 70) * 100).toStringAsFixed(0)}%'),),])
                    ]),

                    Text("    \n HUAWEI SMART WATCH GT2",style: const TextStyle(fontWeight: FontWeight.bold),),
                    Row(children: [Column(children: [ Text("\nPrix magasin    "),Text(  "\n899DT",style: const TextStyle(decoration: TextDecoration.lineThrough),),],),
                        Column(children: [ Text("\nPrix de départ"),Text( "\n1DT",style: const TextStyle(color: Colors.lightBlue), ), ], )], ),
                   Container( width: 190,height: 71,child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),child: RaisedButton(
                        child: Column( children: [
                            Text( 'Achetez directement et gagner 279DT de remise '),

                         Row(children: [
                           Image( image: AssetImage( 'assets/cyberio.jpg'),width: 90, height: 21),
                           Image( image: AssetImage( 'assets/Icon ionic-ios-arrow-dropright.png'),width: 60, height: 21)


                         ],)  ], ), onPressed: () { openurl(); }),)),
                        
                      
                       ]),  ])),
                        Row(
                                children: [
                                  Container( width: 148,child:Text("")),
                                   ClipRRect( borderRadius: BorderRadius.circular(8.0),child:Container( height: 41,width: 190,decoration: BoxDecoration(
                                    gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
                                    colors: [Colors.red, Colors.orange,],)),
                                    child:Center(child: Text("Participer à 6 DT ")),)) ,          
                                    
                                ],
                              )
                     
                   ],
                 ))
                 :
                 SelectedItem==1?
                 ProduitsEnCours()
                 :
                 ProduitsTermines(),

                ])));
             
  }
}


openurl() {
  String url1 = "https://www.cyberio.tn/index.php";
  launch(url1);
}
