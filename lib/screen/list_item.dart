import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("List Item"),),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.white ),
                  child: Column(children: [
                    Text("28K", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Text("Followers", style: TextStyle(color: Colors.grey),)
                  ],),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.white ),
                  child: Column(children: [
                    Text("28K", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Text("Followers", style: TextStyle(color: Colors.grey),)
                  ],),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.white ),
                  child: Column(children: [
                    Text("28K", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Text("Followers", style: TextStyle(color: Colors.grey),)
                  ],),
                ),Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.white ),
                  child: Column(children: [
                    Text("28K", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Text("Followers", style: TextStyle(color: Colors.grey),)
                  ],),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// class ListItem extends StatelessWidget {
//    ListItem({super.key});
//
//   List<Map<String,dynamic>>  data = [
//     {
//       "title":"26L",
//       "subtitle": "Followers",
//     },
//     {
//       "title":"278999",
//       "subtitle": "Follhahahahhaowers",
//     },
//     {
//       "title":"2asdfaasdfa6L",
//       "subtitle": "Followers",
//     },
//     {
//       "title":"26L",
//       "subtitle": "asdfasd",
//     }
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       appBar: AppBar(title: Text("List Item"),),
//       body:Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 8),
//               height: 100,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: data.length,
//                   itemBuilder: (context,index){
//                 return Container(
//                   margin: EdgeInsets.symmetric(horizontal: 8),
//                   padding: EdgeInsets.all(16),
//                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color:Colors.white ),
//                   child: Column(children: [
//                     Text(data[index]["title"], style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),overflow: TextOverflow.ellipsis,),
//                     Text(data[index]["subtitle"], style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,)
//                   ],),
//                 );
//               }),
//             )
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }