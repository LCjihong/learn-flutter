import 'package:flutter/material.dart';
import 'package:import_days/self_mock.dart';
import 'package:import_days/src/AppBar/AppBar.dart';
import 'package:import_days/src/PeopleList/PeopleList.dart';
import 'package:import_days/src/PersonDetail/PersonalDetail.dart';

class NarrowLayout extends StatefulWidget {
  const NarrowLayout({Key? key}) : super(key: key);

  @override
  State<NarrowLayout> createState() => _NarrowLayoutState();
}

class _NarrowLayoutState extends State<NarrowLayout> {

  @override
  Widget build(BuildContext context) {
    return PeopleList(onPress: (person) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Scaffold(
        appBar: MyAppBar(),
        body: PersonDetail(person: person,),
      )));
    });
  }
}

