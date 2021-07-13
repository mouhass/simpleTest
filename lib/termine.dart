import 'package:flutter/material.dart';
import 'package:premierprojet/prochaines.dart';


class ProduitsTermines extends StatefulWidget {
  @override
  termine createState() => termine();
}


class termine extends State<ProduitsTermines> {
 
  @override
  void initState() {super.initState();  }
  @override
  Widget build(BuildContext context) {
        
    return (Row(children: [

           Stack(children: [

                      
                  Container( child:Stack(children: [
                   ClipRRect(borderRadius: BorderRadius.circular(10.0), child: Image( image: AssetImage('assets/Rectangle 268.png'), height: 230, width: 140,fit: BoxFit.cover, ))   ,                        
                   Positioned(top: 73,left: 44,child:Image(image: AssetImage('assets/JBL_Flip5_Product Photo_Hero_Ocean Blue@1X.png'),height: 120, width: 52,fit: BoxFit.fill,) ),
                   Positioned(top: 90, left: 13, child: ClipRRect(borderRadius: BorderRadius.circular(8), child:Stack(children: [
                      
                      Container(width:116, height: 40,color: Color(0XFFE25033), child: Center(child: Text("Remporté à \n 141.60DT", style: const TextStyle(color: Colors.white)),) ),
                      
                   ],) ))  ,
                      
                       ], )),

                    ],),



              
               
             Column(
                children: [
                Row(children: [Text("JBL FLIP4", style: const TextStyle(fontWeight: FontWeight.bold)), Container(width: 140)]),
                SizedBox(height: 6),
                Row(children: [Text("Remporté par "), Text("Zizou2001", style: const TextStyle(color: Colors.red)),Container(width: 47)]),
                SizedBox(height: 6),

                Row(children: [Text("à "), Text("141.60 Dt", style: const TextStyle(color:Colors.red)), Text(" au lieu de"),Text(" 549DT", style: const TextStyle(fontWeight: FontWeight.bold)),Container(width: 22)]),

                SizedBox(height: 20,),
                Container(  child:Stack(children: [
                    Container(width: 193,height: 52, child:ClipRRect(borderRadius: BorderRadius.circular(10),child: RaisedButton( color: Colors.black,onPressed: (){}, ))),
    

                  
                   Positioned(left: 1.5,top: 1,child:Container(width: 190,height: 50, child: ClipRRect( borderRadius: BorderRadius.circular(10), child: RaisedButton( color: Colors.white,
                  child:Row(children: [
                    SizedBox(width: 30,),
                  Image(image: AssetImage('assets/Icon ionic-ios-share-alt@1X.png')),
                  SizedBox(width:20),
                    Center(child:Text("Partager"), ), ],), onPressed: (){},))))


                ],)
                ),


                Container(height: 40),
                
                 ],)
             
              


                    ],));
    

  }}

 