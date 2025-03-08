import 'package:flutter/material.dart';

class AppEcommerce extends StatelessWidget {
  const AppEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Ecommerce App')),
        body: const Center(child: Text('Ecommerce App')),
      ),
    );
  }
}
