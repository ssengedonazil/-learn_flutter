import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Pages/login_page.dart';
import 'package:learn_flutter/Views/Widgets/hero_widget.dart';
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
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                FittedBox(child: Text("Flutter App", style: TextStyle(letterSpacing: 50.0,fontSize: 40.0, fontWeight: FontWeight.bold),),
                
                ),
              //  HeroWidget(),
                FilledButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)  {
                      return LoginWidget( title: "Register",);
                    }));
                },
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 40.0)
                ),
                 child: Text("Get Started")),
          
                TextButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)  {
                      return LoginWidget( title: "Login",);
                    }));
                }, 
                 style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 40.0)
                ),
                 child: Text("Login"))
            ],
            ),
          ),
        ),
      ),
    );
  }
}