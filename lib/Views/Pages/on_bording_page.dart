import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Widgets/hero_widget.dart';

class OnBordingWidget extends StatelessWidget {
  const OnBordingWidget({super.key, required this.title});

  final String title;

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HeroWidget(title: title),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: () {
                
                  // Handle button press
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 40.0),
                ),
                child: Text(title),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
