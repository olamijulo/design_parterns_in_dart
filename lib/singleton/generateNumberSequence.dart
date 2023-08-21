import 'package:flutter/material.dart';

class GenerateNumberSequence {
  static GenerateNumberSequence? _instance;
  int _number = 0;

  GenerateNumberSequence._internal() {
    debugPrint('GenerateNumberSequence called');
    _instance = this;
  }

  factory GenerateNumberSequence() =>
      _instance ?? GenerateNumberSequence._internal();

  getNextNumber() {
    _number++;
    debugPrint('next number called $_number');
  }

  int get getCurrentNumber => _number;
}
