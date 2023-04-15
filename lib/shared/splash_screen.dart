import "package:flutter/material.dart";

void main() {
  runApp(
    const MaterialApp(
      home: SplashScreen(),
    )
  );
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          
        )
      ],
    );
  }
}
