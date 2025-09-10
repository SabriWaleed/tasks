import 'package:flutter/material.dart';
import 'package:sec11/views/forgetpass_view.dart';
import 'package:sec11/views/signup_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F2F4),
      appBar: AppBar(
        title: Text(
          "Login",

          style: TextStyle(
            color: Color(0xff101623),
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.chevron_left, size: 40),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Text(
                "Hi Welcome back, you’ve been missed",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(18),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF9FAFB),
                hintText: "Enter your email",
                hintStyle: TextStyle(color: Color(0xffA1A8B0), fontSize: 20),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Icon(Icons.mail_outlined, size: 30),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF9FAFB),
                hintText: "Enter your password",
                hintStyle: TextStyle(color: Color(0xffA1A8B0), fontSize: 20),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Icon(Icons.lock_outlined, size: 30),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: Icon(Icons.remove_red_eye_outlined, size: 30),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgetPassword()),
                );
              },
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Color(0xffDD8560)),
              ),
            ),
          ),

          Center(
            child: FilledButton(
              onPressed: () {},
              child: Text("Login", style: TextStyle(fontSize: 20)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xffDD8560),
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    horizontal: 150,
                    vertical: 20,
                  ), // كبرنا الزرار
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                "Don’t have an account?",
                style: TextStyle(color: Color(0xff717784)),
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: Text(
                  "  Sign Up",
                  style: TextStyle(color: Color(0xffDD8560)),
                ),
              ),
            ],
          ),
          Divider(height: 16),
        ],
      ),
    );
  }
}
