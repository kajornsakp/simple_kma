import 'package:flutter/material.dart';
import 'package:simple_kma/components/header_widget.dart';
import 'package:simple_kma/components/menu_icon.dart';
import 'package:get/get.dart';

class SubHomePage extends StatelessWidget {
  const SubHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        const HeaderWidget(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuIcon(
                        icon: Icons.money,
                        title: "กดเงินไม่ใช่บัตร",
                        onTap: () async {
                          Get.toNamed('/second_page');
                        }),
                    MenuIcon(icon: Icons.receipt, title: "ประวัติทำรายการ"),
                    MenuIcon(icon: Icons.bookmark, title: "รายงานโปรด"),
                    MenuIcon(icon: Icons.bar_chart, title: "กองทุนรวม"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuIcon(
                        icon: Icons.card_giftcard, title: "กิฟท์ & สิทธิพิเศษ"),
                    MenuIcon(
                        icon: Icons.access_time, title: "รายการตั้งล่วงหน้า"),
                    MenuIcon(icon: Icons.lock, title: "บริการ NDID"),
                    MenuIcon(icon: Icons.menu, title: "เมนูทั้งหมด"),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("เมนูใหม่"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuIcon(icon: Icons.money, title: "กดเงิน"),
                    MenuIcon(icon: Icons.money, title: "กดเงิน"),
                    MenuIcon(icon: Icons.money, title: "กดเงิน"),
                    MenuIcon(icon: Icons.money, title: "กดเงิน"),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("ร้านค้าออนไลน์"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 60, color: Colors.yellow),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("บริการที่น่าสนใจ"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 60, color: Colors.yellow),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 60, color: Colors.yellow),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 60, color: Colors.yellow),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 60, color: Colors.yellow),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 60, color: Colors.yellow),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 60, color: Colors.yellow),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 60, color: Colors.yellow),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
