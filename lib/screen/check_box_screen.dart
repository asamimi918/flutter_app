import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({super.key});

  @override
  State<CheckBoxScreen> createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  bool? isChecked ;
  TextEditingController nameController = TextEditingController();

 @override
  void initState() {
    isChecked = false; 
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(value: isChecked, onChanged: (bool? value) {
                  setState(() {
                    isChecked = !isChecked!;
                  });
                  if(isChecked == true) {
                    nameController.text = "Checked";
                  } else {
                    nameController.text = "Unchecked";
                  }
                  print("===========dfd=======isChecked: $isChecked");
                }),
                Text("CheckBox"),
              ],
            ),
            TextFormField(
              controller: nameController,
              onChanged: (value) {

              },
              decoration: InputDecoration(
                labelText:"Enter Text", 
                border: OutlineInputBorder()
              )
            )
          ],
        ),
      ),
    );
  }
}