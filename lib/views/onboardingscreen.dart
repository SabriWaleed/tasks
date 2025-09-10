import 'package:flutter/material.dart';
import 'package:sec11/views/home_view.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xffDD8560),
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Stack(
        children: [
          Image.asset(
            "lib/assets/images/onboarding$select.jpg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),

          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SafeArea(
              child: Align(
                alignment: Alignment.topRight,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp2()),
                    );
                  },
                  child: Text("Skip", style: TextStyle(color: Colors.black)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 12),
                Text(
                  "Welcome To\nFashion",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Discover the latest trends and exclusive styles\nfrom our top designers",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Spacer(flex: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: select == index
                            ? const Color(0xffDD8560)
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 1),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        children: [
          Spacer(flex: 1),
          FloatingActionButton(
            heroTag: "backBtn",
            onPressed: () {
              setState(() {
                if (select != 0) {
                  select--;
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp2()),
                  );
                }
              });
            },
            shape: CircleBorder(),
            backgroundColor: Colors.white,
            child: Image.asset("lib/assets/images/Mask group (1).png"),
          ),
          Spacer(flex: 10),
          FloatingActionButton(
            heroTag: "backBtnn",
            onPressed: () {
              setState(() {
                if (select < 2) {
                  select++;
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp2()),
                  );
                }
              });
            },
            shape: CircleBorder(),
            backgroundColor: Color(0xffDD8560),
            child: Image.asset("lib/assets/images/Mask group (1).png"),
          ),
        ],
      ),
    );
  }
}
