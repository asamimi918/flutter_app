import 'package:flutter/material.dart';

class ColorModel {
  final String name;
  final Color color;

  ColorModel({required this.name, required this.color});
}

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  TextEditingController productNameController = TextEditingController();

  TextEditingController productDescriptionController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  List<ColorModel> colors = [
    ColorModel(name: "Red", color: Colors.red),
    ColorModel(name: "Green", color: Colors.green),
    ColorModel(name: "Blue", color: Colors.blue),
    ColorModel(name: "Yellow", color: Colors.yellow),
    ColorModel(name: "Black", color: Colors.black),
    ColorModel(name: "White", color: Colors.white),
  ];

  final List<ColorModel> selectedColors = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Form')),
      persistentFooterButtons: [
        SizedBox(
          height: 45,
          width: double.infinity,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.blueAccent),
            ),
            onPressed: () {
              // Handle form submission
            },
            child: Text(
              'Submit',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            textFieldCustom(
              labelText: "Product Name",
              controller: productNameController,
            ),
            textFieldCustom(
              labelText: "Product Description",
              controller: productDescriptionController,
            ),
            textFieldCustom(labelText: "Price", controller: priceController),
            Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select Color",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Wrap(
                  runSpacing: 8,
                  alignment: WrapAlignment.start,
                  spacing: 8,
                  children: colors.map((color) {
                    return colorCustom(
                      borderColor: selectedColors.contains(color)
                          ? Colors.purple
                          : Colors.grey,
                      color: color.color,
                      name: color.name,
                      onTap: () {
                        setState(() {
                          if (selectedColors.contains(color)) {
                            selectedColors.remove(color);
                          } else {
                            selectedColors.add(color);
                          }
                        });
                        print(
                          "=========${selectedColors.map((e) => e.name).toList()}=========",
                        );
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget colorCustom({
    required Color color,
    required String name,
    required Color borderColor,
    required VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          spacing: 6,
          children: [
            Icon(Icons.circle, color: color, size: 24),
            Text(name),
          ],
        ),
      ),
    );
  }

  Widget textFieldCustom({
    required String labelText,
    TextEditingController? controller,
  }) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
      controller: controller,
    );
  }
}
