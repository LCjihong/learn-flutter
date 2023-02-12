import 'package:flutter/material.dart';
import '../../self_mock.dart';

class PeopleList extends StatelessWidget {
  final void Function(Person) onPress;
  const PeopleList({Key? key, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (Person person in persons)
          ListTile(
            title: Text(person.name),
            leading: Image.network(person.avatar),
            onTap: () => {onPress(person)},
          ),
      ],
    );
  }
}

