import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({
    super.key,
    required this.icon,
    required this.title
  });

  final IconData icon;
  final String title;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 80,
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(icon), Text(title)],
        ),
      ),
    );
  }
}