import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
          image: AssetImage(
            "assets/WelcomeBackground.png",
          ),
        ),
      ),
    );
  }
}
