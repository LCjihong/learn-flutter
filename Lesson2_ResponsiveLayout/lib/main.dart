import 'package:flutter/material.dart';
import 'package:import_days/src/AppBar/AppBar.dart';
import 'package:import_days/src/NarrowLayout/NarrowLayout.dart';
import 'package:import_days/src/WidthLayout/WidthLayout.dart';

void main() {
  return runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Import Days',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: MyAppBar(),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 500) {
            return const WidthLayout();
          } else {
            return const NarrowLayout();
          }
        }),
      ),
    );
  }
}
