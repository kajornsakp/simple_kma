import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  MenuIcon(
      {super.key, required this.icon, required this.title, this.onTap});

  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        height: 80,
        width: 60,
        child: Column(
          children: [
            SizedBox(height: 16,),
            Icon(icon),
            Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
