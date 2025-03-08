import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/design/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.brandLightColor,
        title: Text(
          'Store Name',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: const Center(child: Text('Ecommerce App')),
    );
  }
}
