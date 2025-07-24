import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key, required this.title});

  final String title;
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Snackbar"),
                  duration: Duration(seconds: 5),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            child: Text("Open Snackbar"),
          ),
        ],
      ),
    );
  }
}
