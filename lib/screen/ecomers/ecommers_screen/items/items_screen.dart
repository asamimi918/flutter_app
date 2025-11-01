import 'package:flutter/material.dart';
import 'package:flutter_app/screen/ecomers/ecommers_screen/detail/detail_screen.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Items Screen")),
      body: GridView.builder(
        itemCount: 9,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen()),
            ),
            child: Card(
              color: Colors.white,
              child: Column(
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMIAhVWh-z-Ny85NNIba4Dfl807tj2U96Uzg&s",
                  ),
                  Text(
                    "Stylish Chair",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text("\$250", style: TextStyle(fontSize: 16)),
                  Row(
                    children: List.generate(3, (index) {
                      return Icon(Icons.circle, color: Colors.green, size: 12);
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
