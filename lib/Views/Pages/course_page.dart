import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Widgets/contsiner_widget.dart';
import 'package:learn_flutter/Views/Widgets/hero_widget.dart';
import 'package:learn_flutter/data/constants.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      appBar: AppBar(),
      body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: "Course page", ),
            
          ],
        ),
      ),
    ),

    
    );
  }
}
// moviebox.id, moviebox.ph, moviebox.pk, movieboxapp.in