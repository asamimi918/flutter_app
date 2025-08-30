import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<String> categories = ["Sofas", "Chairs", "Tables", "Beds", "Wardrobes"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.list)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Badge(label: Text("3"), child: Icon(Icons.delete)),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discover products",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.grey.shade200,
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.filter_list_rounded),
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Text(
                        categories[index].toString(),
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 2.5,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(16),
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
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text("\$200", style: TextStyle(fontSize: 16)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(3, (index) {
                            return Icon(
                              Icons.circle,
                              color: Colors.green,
                              size: 12,
                            );
                          }),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
