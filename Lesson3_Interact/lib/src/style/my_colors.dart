import 'package:flutter/material.dart';

class MyColors {
  LinearGradient get gradient => const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color.fromRGBO(101, 168, 205, 1),Color.fromRGBO(38, 91, 147, 1)]
  );
  LinearGradient get buttonGradient => const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color.fromRGBO(101, 168, 205, 1),Color.fromRGBO(38, 109, 184, 1)]
  );
}