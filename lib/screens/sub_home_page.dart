import 'package:flutter/material.dart';
import 'package:untitled1/components/menu_icon.dart';

class SubHomePage extends StatelessWidget {
  const SubHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Container(
          height: 300,
          color: Colors.yellow,
        ),
        Expanded(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  MenuIcon(icon: Icons.money, title: "กดเงิน"),
                  MenuIcon(icon: Icons.money, title: "กดเงิน"),
                  MenuIcon(icon: Icons.money, title: "กดเงิน"),
                  MenuIcon(icon: Icons.money, title: "กดเงิน"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  MenuIcon(icon: Icons.money, title: "กดเงิน"),
                  MenuIcon(icon: Icons.money, title: "กดเงิน"),
                  MenuIcon(icon: Icons.money, title: "กดเงิน"),
                  MenuIcon(icon: Icons.money, title: "กดเงิน"),
                ],
              ),
              const SizedBox(height: 20),
              const Text("เมนูใหม่"),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  MenuIcon(icon: Icons.money, title: "กดเงิน"),
                  MenuIcon(icon: Icons.money, title: "กดเงิน"),
                  MenuIcon(icon: Icons.money, title: "กดเงิน"),
                  MenuIcon(icon: Icons.money, title: "กดเงิน"),
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
