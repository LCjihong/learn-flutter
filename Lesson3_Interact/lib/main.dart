import 'package:flutter/material.dart';
import 'package:import_days/src/components/button_row.dart';
import 'package:import_days/src/components/title_card.dart';
import 'package:import_days/src/components/app_bar.dart';

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
                children: const [
                  TitleCard(),
                  ButtonRow(),
                  Text(
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
