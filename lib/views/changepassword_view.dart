import 'package:flutter/material.dart';
import 'package:sec11/views/dialog.dart';
import 'package:sec11/widgets/filledbutton_widget.dart';
import 'package:sec11/widgets/textfield_widget.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Image.asset(
            "lib/assets/images/Vector (6).png",
            color: Colors.orange,
            width: 20,
            height: 20,
            fit: BoxFit.contain,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Change Password",
                style: TextStyle(color: Color(0xff1E1E1E), fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                "Reset your account password and access your personal account again.",
                maxLines: 3,
                style: TextStyle(color: Color(0xffACACAC), fontSize: 19),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 12),
              child: Text(
                "New Password",
                style: TextStyle(color: Color(0xff1E1E1E), fontSize: 22),
              ),
            ),
            TextfieldWidget(
              text: "Password",
              image: "lib/assets/images/solar_eye-linear.png",
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 12),
              child: Text(
                "Confirm New Password",
                style: TextStyle(color: Color(0xff1E1E1E), fontSize: 22),
              ),
            ),
            TextfieldWidget(
              text: "Password",
              image: "lib/assets/images/solar_eye-linear.png",
            ),

            SizedBox(height: 30),
            FilledbuttonWidget(
              text: "Change Password",
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DialogPage(),
                  ), 
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
