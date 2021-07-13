import 'package:flutter/material.dart';
import 'package:premierprojet/prochaines.dart';
import 'package:url_launcher/url_launcher.dart';


class ProduitsEnCours extends StatefulWidget {
  @override
  EnCours createState() => EnCours();
}


class EnCours extends State<ProduitsEnCours> {
 String valeurDeLimage = "img.png";
  @override
  void initState() {super.initState();  }
  @override
  Widget build(BuildContext context) {
        
    return (
      Column(children: [

          Stack(children: [
        
         Image(image: AssetImage('assets/Rectangle 247.png'),width: 390,height: 170,),
         Positioned(left: 80, top: -15,child:Image(image: AssetImage('assets/smartWatch.png'),width: 200,height: 200)),
         Positioned(left: 280, top: 20,child:IconButton(icon:Image(image: AssetImage('assets/${valeurDeLimage}')), onPressed: (){ if(valeurDeLimage=="img.png"){valeurDeLimage="image1.png";}else{valeurDeLimage="img.png";}},)),
       Positioned( left: 30,top: 30,child: ClipRRect( borderRadius: BorderRadius.circular(10),  child:Image(image: AssetImage('assets/Groupe 484@1X.png'), ))),

      
     ],),

      SizedBox(height: 20),
      Row(children: [
          SizedBox(width: 28),
             
            Stack(children: [
            ClipRRect(borderRadius:  BorderRadius.circular(8),
            child: Container(color: Colors.red, width: 119,height: 28 , child: Center(child:Text("En direct", style: const TextStyle(color: Colors.white),)))),]),
            SizedBox(width: 10),

           Stack(children: [
            ClipRRect(borderRadius:BorderRadius.circular(8.0),
            
             child: Container(width: 80,height: 28,decoration: BoxDecoration(    gradient: LinearGradient( begin: Alignment.topLeft,end: Alignment.bottomRight, colors: [ Color(0XFFC772FF),Colors.white,],)),)),

            Positioned(left: 7, top: 3,child:Image(image: AssetImage('assets/Groupe 457@1X.png'))),
            Positioned(left: 35,top: 5,child: Text("100%"))
           ],)



      ],),

      Row(children: [
        SizedBox(width:30,height:40),
        Text("HUAWEI SMART WATCH GT2" , style: TextStyle(fontWeight: FontWeight.bold, ), ),
        Container(width: 80)

      ]),
      
     Row(children: [SizedBox(width:30),
       Column(children: [ Text("\nPrix magasin    "),Text(  "\n899DT",style: const TextStyle(decoration: TextDecoration.lineThrough),),],),
        SizedBox(width:110),
                        Column(children: [ Text("\nPrix en cours"),Text( "\n250DT",style: const TextStyle(color: Colors.red), ), ], )], ),
      SizedBox(height: 20),
     Container(width: 300,height: 71,child: RaisedButton(child:Column(children: [Row(children: [Text("Achetez directement et gagner"), Container(width: 20,)]), Row(children: [Text("279DT", style: const TextStyle(color: Colors.red),), Text( "de remise", )],) ,
      Row(children: [
        Image( image: AssetImage( 'assets/cyberio.jpg'),width: 90, height: 21),
        SizedBox(width: 100),
        Image( image: AssetImage( 'assets/Icon ionic-ios-arrow-dropright.png'),width: 60, height: 21)]),
     ],),onPressed: (){openurl();},))


      ],)
     
    );
    

  }}

  
openurl() {
  String url1 = "https://www.cyberio.tn/index.php";
  launch(url1);
}
