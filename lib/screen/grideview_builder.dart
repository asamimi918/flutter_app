import 'package:flutter/material.dart';
import 'package:flutter_app/screen/check_box_screen.dart';


class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("gridview-builder"),),
      body: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
    
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CheckBoxScreen()));
          },
          child: Card(
            color: Colors.amber,
            child: Center(child: Text('$index')),
          ),
        );
      },
    ),
    );
  }
}