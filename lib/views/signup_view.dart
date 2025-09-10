import 'package:flutter/material.dart';
import 'package:sec11/views/login_view.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF1F2F4),
        appBar: AppBar(
          title: Text(
            "Sign Up",

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
              padding: const EdgeInsets.all(18),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF9FAFB),
                  hintText: "Enter your name",
                  hintStyle: TextStyle(color: Color(0xffA1A8B0), fontSize: 20),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Icon(Icons.person_2_outlined, size: 30),
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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(value: false, onChanged: (bool? value) {}),
                      Text(
                        "I agree to the medidoc",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        " Terms of Service",
                        style: TextStyle(
                          color: Color(0xffDD8560),
                          fontSize: 16,
                        ),
                      ),
                      Text(" and", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 170),
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(fontSize: 16, color: Color(0xffDD8560)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Center(
              child: FilledButton(
                onPressed: () {},
                child: Text("Sign Up", style: TextStyle(fontSize: 20)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xffDD8560),
                  ),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(
                      horizontal: 150,
                      vertical: 20,
                    ), 
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Alredy have an account?",
                  style: TextStyle(color: Color(0xff717784)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginView()),
                    );
                  },
                  child: Text(
                    " Login",
                    style: TextStyle(color: Color(0xffDD8560)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
