import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/design/colors.dart';
import 'package:flutter_ecommerce/design/radius.dart';

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

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/user.png')),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        Expanded(
          child: Text(
            'Store Name',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        ContainerHeaderIcon(
          configMArgin: const EdgeInsets.only(right: 12),
          iconButton: IconButton(
            icon: const Icon(
              Icons.notifications,
              color: AppColors.brandPrimaryColor,
            ),
            onPressed: () {},
          ),
        ),
        ContainerHeaderIcon(
          iconButton: IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: AppColors.brandPrimaryColor,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class ContainerHeaderIcon extends StatelessWidget {
  final IconButton iconButton;
  final EdgeInsets? configMArgin;

  const ContainerHeaderIcon({
    super.key,
    required this.iconButton,
    this.configMArgin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: configMArgin,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.brandLightColorBorder),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: iconButton,
    );
  }
}
