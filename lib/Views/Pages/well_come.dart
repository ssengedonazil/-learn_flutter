import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/widget_tree.dart';

class WellComePage extends StatefulWidget {
  const WellComePage({super.key});

  @override
  State<WellComePage> createState() => _WellComePageState();
}

class _WellComePageState extends State<WellComePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset("assets/images/happy.png")//.asset('assets/images/happy.png')
            ),
            FilledButton(onPressed: (){
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)  {
                  return WidgetTree();
                }));
            }, child: Text("Login"))
        ],
        ),
      ),
    );
  }
}