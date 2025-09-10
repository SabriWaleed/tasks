import 'package:flutter/material.dart';
import 'package:sec11/widgets/textfield.dart';

class CreateNewPassord extends StatelessWidget {
  const CreateNewPassord({super.key});

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
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create New Password",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                "Create Your New Password To Confirm Login",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              TextFieldView(
                text: "Enter Your Password",
                pre: Icon(Icons.lock),
                suff: Icon(Icons.remove_red_eye),
              ),
              TextFieldView(
                text: "Confirm Your Password",
                pre: Icon(Icons.lock),
                suff: Icon(Icons.remove_red_eye),
              ),

              SizedBox(height: 20),
              Center(
                child: FilledButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 255, 149, 104),
                    ),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    ),
                  ),
                  child: Text(
                    "Change Password",
                    style: TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
