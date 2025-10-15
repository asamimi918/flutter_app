import 'package:flutter/material.dart';
import 'package:flutter_app/screen/ecomers/ecommers_screen/detail/detail_screen.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Items Screen")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 2.7,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen()),
            ),
            child: Card(
              color: Colors.white,
              child: Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://images2.imgix.net/p4dbimg/401/images/2400-15.jpg?fit=fill&bg=FFFFFF&trim=color&trimtol=5&trimcolor=FFFFFF&w=384&h=288&fm=pjpg&auto=format",
                  ),
                  Text(
                    "Stylish Chair",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text("\$200", style: TextStyle(fontSize: 16)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
