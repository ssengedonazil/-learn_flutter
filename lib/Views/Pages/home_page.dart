import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          HeroWidget(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Card(
              child: Padding(padding: EdgeInsets.all(20), child: Text("Card")),
            ),
          ),
        ],
      ),
    );
  }
}
