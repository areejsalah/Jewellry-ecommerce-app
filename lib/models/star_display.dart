import 'package:flutter/material.dart';

class StarDisplay extends StatelessWidget {
  late int value;
  StarDisplay(this.value);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
          color: Colors.amber,
        );
      }),
    );
  }
}
