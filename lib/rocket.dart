import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Rocket extends StatefulWidget {
  const Rocket({super.key});

  @override
  RocketState createState() => RocketState();
}

class RocketState extends State<Rocket> {
  bool _showRocket = false; // Boolean to control animation visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rocket Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Conditionally display the Lottie animation
            if (_showRocket)
              Lottie.network(
                "https://lottie.host/9c48b2b7-a9f1-4e23-84f8-bf0d3e2c257c/xui4OemRxk.json",
                width: 300, // Optionally adjust width
                height: 300, // Optionally adjust height
              ),
            const SizedBox(height: 20), // Space between the animation and button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _showRocket = !_showRocket; // Toggle animation visibility
                });
              },
              child: Text(_showRocket ? 'Hide' : 'Launch'),
            ),
          ],
        ),
      ),
    );
  }
}