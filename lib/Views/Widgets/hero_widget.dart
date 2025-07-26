import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  final String title;

  const HeroWidget({super.key, this.title = "Your Title"});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: 'hero1',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              "assets/images/happy.png",
              color: Colors.teal,
              colorBlendMode: BlendMode.darken,
            ),
          ),
        ),
        const SizedBox(height: 20), // optional spacing
        FittedBox(
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
              letterSpacing: 5.0,
              color: Colors.white60 // You had 50.0, which is extremely wide
            ),
          ),
        ),
      ],
    );
  }
}
