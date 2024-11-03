import 'dart:math';

import 'package:flutter/material.dart';


class HobbyCard extends StatelessWidget{
  final String title;
  final IconData iconData;
  final Color? backgroundColor;


  const HobbyCard({super.key, required this.title, required this.iconData,this.backgroundColor});
  
  @override
   Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
       color: backgroundColor,
       borderRadius: BorderRadius.circular(20)

      ),
     
      child:Row(  //text and icon
        crossAxisAlignment: CrossAxisAlignment.center,
        children: 
        [
          Padding(padding: const EdgeInsets.only(left: 30),
          child:  Icon(iconData, color: Colors.white, size: 24)),
          const SizedBox(width: 20),
          Text(
         title, 
         style: const TextStyle( 
          fontSize: 20, 
          color: Colors.white, 
          fontWeight: FontWeight.bold),
          ),
          ],
    ),
    );
  }

}
void main() => runApp( MaterialApp(
      
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('My hobbies',
          ),),
        backgroundColor: Colors.grey, 
        body: Center(
        child: Column( 
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        const SizedBox(height: 40),
        HobbyCard(
        iconData: Icons.flight, 
        title: 'Traveling', 
        backgroundColor: Colors.green.shade600,),
        HobbyCard(
        iconData: Icons.ice_skating, 
        title: 'Skating', 
        backgroundColor: Colors.blue.shade300,),
        ],
        )
        ),
        
        
      ),
    )
    );
