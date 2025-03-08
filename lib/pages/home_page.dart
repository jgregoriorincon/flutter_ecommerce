import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/design/colors.dart';
import 'package:flutter_ecommerce/design/radius.dart';
import 'package:flutter_ecommerce/widgets/home_app_bart_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 97,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: AppRadius.sm,
            bottomRight: AppRadius.sm,
          ),
        ),
        backgroundColor: AppColors.brandLightColor,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(16, 45, 16, 12),
          child: HomeAppBarTitle(),
        ),
      ),
      body: const Center(child: Text('Ecommerce App')),
    );
  }
}
