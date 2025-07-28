import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Widgets/contsiner_widget.dart';
import 'package:learn_flutter/Views/Widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
             HeroWidget(),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
//               
//=-P09O8790-876543OP[9-08P7O654TREFGDHJKL;KL------------------------------------------------------------
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
//                ------------------------------------------------------------
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
             ContainerWidget( title: "Title", Description: "Description",),
          ],
        ),
      ),
    );
  }
}
// moviebox.id, moviebox.ph, moviebox.pk, movieboxapp.in