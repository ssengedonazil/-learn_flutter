import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Widgets/contsiner_widget.dart';
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
           ContainerWidget( title: "Title", desction: "Description",),
           ContainerWidget( title: "Title", desction: "Description",),
        ],
      ),
    );
  }
}
// moviebox.id, moviebox.ph, moviebox.pk, movieboxapp.in