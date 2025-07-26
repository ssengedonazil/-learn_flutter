import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Widgets/hero_widget.dart';
import 'package:learn_flutter/Views/widget_tree.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  TextEditingController pwd = TextEditingController();
  TextEditingController email = TextEditingController();
  String ConfirmPassword = '123';
  String ConfirmEmail = '123';
  void dispose() {
    super.dispose();
    pwd.dispose();
    email.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeroWidget(title: "Login"),
            SizedBox(height: 20),
            TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: "Enter your email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: pwd,
              decoration: InputDecoration(
                hintText: "Enter your password ",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                onLoginPressed();
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 40.0),
              ),
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (ConfirmEmail == email.text && ConfirmPassword == pwd.text) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Invalid Credentials",
            
          ),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 1),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }
}
