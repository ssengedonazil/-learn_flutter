import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/widget_tree.dart';
import 'package:learn_flutter/Views/Widgets/nav_bar_widget.dart';
// stateful can render dynamic content
// stateless can only render static content(cant refresh)
// setState to refresh content
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: WidgetTree(),
    );
  }
}
 
 