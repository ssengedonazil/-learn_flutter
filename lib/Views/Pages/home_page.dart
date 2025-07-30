import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Widgets/hero_widget.dart';
import 'package:learn_flutter/data/contants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          HeroWidget(),
          Container(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Card", style: KTextStyle.titleTealText),
                      Text(
                        "The description",
                        style: KTextStyle.descriptionText,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// moviebox.id, moviebox.ph, moviebox.pk, movieboxapp.in