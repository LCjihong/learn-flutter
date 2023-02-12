import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../style/my_colors.dart';

AppBar MyAppBar() {
  return AppBar(
    title: const Text('Import Days'),
    centerTitle: true,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(0, 0, 0, 0),
    ),
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: MyColors().gradient,
      ),
    ),
    actions: [
      Row(
        children: [
          Container(
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                  gradient: MyColors().buttonGradient,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      spreadRadius: 1,
                    )
                  ]),
              child: IconButton(
                onPressed: () {
                  print('rjh');
                },
                padding: const EdgeInsets.all(0),
                icon: const Icon(Icons.add),
              )),
          const SizedBox(width: 10)
        ],
      )
    ],
  );
}
