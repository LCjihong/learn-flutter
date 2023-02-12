import 'package:flutter/material.dart';
import 'src/AppBar/AppBar.dart';

void main() {
  return runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: ListView(children: [
          Container(
            padding: const EdgeInsets.only(bottom: 45),
            child: Image.asset(
              'images/pretty_img.jpg',
              width: double.infinity,
            ),
          ),
          Container(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Oeschinen Lake Campground',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Kandersteg, Switzerland',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.red[600],
                            size: 30,
                          ),
                          const Text(
                            '41',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 30, bottom: 30, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _my_button(Colors.blue[600], Icons.call, 'CALL'),
                        _my_button(Colors.blue[600], Icons.route, 'ROUTE'),
                        _my_button(Colors.blue[600], Icons.share, 'SHARE'),
                      ],
                    ),
                  ),
                  const Text(
                    'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondolaride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ))
        ]));
  }
}

Widget _my_button(Color? color, IconData icon, String text) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        icon,
        color: color,
        size: 30,
      ),
      Text(
        text,
        style: TextStyle(fontSize: 16, color: color),
      )
    ],
  );
}
