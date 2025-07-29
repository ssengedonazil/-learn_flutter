import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Widgets/contsiner_widget.dart';
import 'package:learn_flutter/Views/Widgets/hero_widget.dart';
import 'package:learn_flutter/data/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      "moviebox.id",
      "moviebox.ph",
      "moviebox.pk",
      "movieboxapp.in",
      KValue.keyConcepts,
      KValue.basicLayout,
      KValue.cleanUi,
      KValue.FixBugs
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(),
            Column(
              children: List.generate(
                list.length,
                (index) =>
                    ContainerWidget(title: list[index], Description: "Description"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// moviebox.id, moviebox.ph, moviebox.pk, movieboxapp.in