import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/design/themes.dart';
import 'package:flutter_ecommerce/pages/home_page.dart';

class AppEcommerce extends StatelessWidget {
  const AppEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: AppThemes.defaultTheme,
      home: const HomePage(key: Key('home_page')),
    );
  }
}
