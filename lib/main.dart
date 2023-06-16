import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_kma/screens/second_screen.dart';
import 'package:simple_kma/screens/sub_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.green,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
        )
      ),
      getPages: [
        GetPage(name: '/second_page', page: () => SecondScreen()),
      ],
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int page = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: page,
          onTap: (index) {
            setState(() {
              page = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: 'หน้าหลัก',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.note),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        body: IndexedStack(
          index: page,
          children: [
            buildPage(0),
            buildPage(1),
            buildPage(2),
            buildPage(3),
          ],
        ),
      ),
    );
  }

  Widget buildPage(int index) {
    switch(index) {
      case 0:
        return const SubHomePage();
      case 1:
        return const Center(child: Text('Search'));
      case 2:
        return const Center(child: Text('Profile'));
      default:
        return const Center(child: Text('หน้าหลัก'));
    }
  }
}


