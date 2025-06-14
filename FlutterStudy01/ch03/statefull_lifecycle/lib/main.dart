import 'package:flutter/material.dart';
import "widgets/w01_stateless_widget01.dart";
import "widgets/w02_stateful_widget01.dart";
import "widgets/w03_stateless_lifecycle01.dart";
import "widgets/w04_stateful_lifecycle01.dart";
import "widgets/w05_stateful_lifecycle02.dart";
import "widgets/w06_stateful_lifecycle03.dart";

void main() {
  runApp(
    MaterialApp(
      //home: MyStatelessWidget(),
      //home: MyStatefulWidget(),
      //home: StatelessLifeCycle01(),
      //home: StatefulLifeCycle01(),
      //home: StatefulLifeCycle02(),
      home: StatefulLifeCycle03(),
    ),
  );
}

