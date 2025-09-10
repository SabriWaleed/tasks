import 'package:flutter/material.dart';

class LoadingExamples extends StatelessWidget {
  const LoadingExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Loading View"),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              const SizedBox(height: 10),
              const Center(
                child: CircularProgressIndicator(color: Colors.orange),
              ),
              const SizedBox(height: 30),
              const LinearProgressIndicator(color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
