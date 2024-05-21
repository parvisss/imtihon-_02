import 'package:flutter/material.dart';

extension StarExtension on Widget {
  Widget star() {
    return const Icon(
      Icons.star,
      color: Colors.yellow,
    );
  }
}
