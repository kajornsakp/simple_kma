import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 15,
                child: Container(),
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text("ยินดีต้อนรับ"),
                  Text("สวัสดีตอนค่ำ"),
                ],
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text("ออกจากระบบ"),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ออมทรัพย์ จัดให้ (ออนไลน์)"),
                  Text("9,999.00"),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text("xxx-4-12345-x"),
              Spacer(),
              Text("แสดงบัญชีทั้งหมด"),
            ],
          )
        ],
      ),
    );
  }
}
