import 'package:flutter/material.dart';
import 'package:flutter_app/screen/list_item.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

    body:SafeArea(
      child: Column(
        spacing: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("WonderWise",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Image.network("https://upload.wikimedia.org/wikipedia/commons/d/d4/20171126_Angkor_Wat_4712_DxO.jpg",height: 350,),
          ),
          Text("Discover\n Friend Nearby",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          Text("See where your friends are travelling and\n explore the world together",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: Colors.grey),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing:4,
            children: [
            Icon(Icons.circle,size: 12,color: Colors.grey,),
            Icon(Icons.circle,size: 12,),
            Icon(Icons.circle,size: 12,color: Colors.grey,),
          ],),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ListItem()));
          }, child:const   Text("Get Started",style: TextStyle(color: Colors.white),),style:  ElevatedButton.styleFrom(backgroundColor: Colors.amber),)
        ],
      ),
    ) ,
    );
    
  }
}
