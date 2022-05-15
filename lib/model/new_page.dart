import 'package:flutter/material.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  static const id = '/new_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _State();
}

class _State extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/ic_image.webp'),
              fit: BoxFit.cover,
            )),
            child: Center(
                child: Column(
                    children: [
                      Container(
                margin: const EdgeInsets.fromLTRB(30, 800, 10, 27),
                child: MaterialButton(
                  onPressed: () {
                    // TODO to'g'irlash kerak
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  color: Colors.orange,
                  child: const Text('Tasbeh'),
                ),
              )
            ])),
          ),
        ],
      ),
    );
  }
}
