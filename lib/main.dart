import 'package:flutter/material.dart';

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
      home: Scaffold(
      
        appBar: AppBar(
          title: const Text('Learn Flutter'),
          // leading: Icon(Icons.login),
        ),
         
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'user'),
          ],
          onDestinationSelected: (value) => print(value),
        ),
        body: const Center(child: Text('Hello World 2')),
      ),
    );
  }
}
