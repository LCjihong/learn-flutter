import 'package:flutter/material.dart';
import 'package:import_days/self_mock.dart';
import 'package:import_days/src/PeopleList/PeopleList.dart';
import 'package:import_days/src/PersonDetail/PersonalDetail.dart';

class WidthLayout extends StatefulWidget {
  const WidthLayout({Key? key}) : super(key: key);

  @override
  State<WidthLayout> createState() => _WidthLayoutState();
}

class _WidthLayoutState extends State<WidthLayout> {
  late Person _person;
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: PeopleList(onPress: (person) {
            setState(() {
              _person = person;
              isClick = true;
            });
          },),
        ),
        Expanded(
          flex: 2,
          child: isClick ? PersonDetail(person: _person,) : const Placeholder(),
        )
      ],
    );
  }
}

