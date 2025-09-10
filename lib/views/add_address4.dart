import 'package:flutter/material.dart';
import 'package:sec11/widgets/textfieldwidget.dart';

class AddAddressView extends StatelessWidget {
  const AddAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Color(0xffFFFFFF),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.chevron_left, size: 40),
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                "Add Address",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            TextFieldWidget(text: "Title"),
            TextFieldWidget(text: "Address"),
            TextFieldWidget(text: "Building No"),
            TextFieldWidget(text: "Floor No"),
            TextFieldWidget(text: "Apartment No"),

            SizedBox(height: 100),
            Center(
              child: FilledButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 255, 77, 1),
                  ),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 170, vertical: 15),
                  ),
                ),
                child: Text(
                  "Save",
                  style: TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
