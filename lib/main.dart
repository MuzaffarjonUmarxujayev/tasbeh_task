import 'package:flutter/material.dart';

import 'model/detail_page.dart';
import 'model/new_page.dart';

void main() {
  runApp(const MyTasbex());
}

class MyTasbex extends StatelessWidget {
  const MyTasbex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        DetailPage.id: (context) => DetailPage(),
      },
    );
  }
}
