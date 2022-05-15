import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static const id = 'detail_page';

  const DetailPage({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<DetailPage> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
      if (count == 34) {
        count = 0;
      }
    });
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 70, 10, 1),
              color: Colors.amberAccent,
              child: const Center(
                child: Text(
                  'SubhanAlloh',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.red),
                ),
              ),
              width: 170,
              height: 60,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 10, 1),
              color: Colors.cyan,
              child: const Center(
                child: Text(
                  'Alhamdulillah',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.red),
                ),
              ),
              width: 170,
              height: 60,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 10, 1),
              color: Colors.black,
              child: const Center(
                child: Text(
                  'Allohuakbar',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.red),
                ),
              ),
              width: 170,
              height: 60,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 190, 10, 1),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 50, color: Colors.blue),
              ),
              child: MaterialButton(
                onPressed: increment,
                child: Text(
                  'Hisob : $count',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 25),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
