import 'package:flutter/material.dart';
import 'package:import_days/self_mock.dart';
import '../AppBar/AppBar.dart';

class PersonDetail extends StatelessWidget {
  final Person person;
  const PersonDetail({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(person.address),
          Text('${person.telNumber}'),
        ],
      ),
    );
  }
}

