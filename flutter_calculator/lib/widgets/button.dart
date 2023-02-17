import 'package:flutter/material.dart';
import '../constant.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
    this.backgroundColor = Colors.transparent,
    this.textColor = kTextColorBlack,
    required this.text,
    required this.press,
  });

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: backgroundColor,
        child: ElevatedButton(
            onPressed: press,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(backgroundColor),
                padding: MaterialStateProperty.all(const EdgeInsets.all(30)),
                textStyle:
                    MaterialStateProperty.all(const TextStyle(fontSize: 30))),
            child: Text(text)),
      ),
    );
  }
}
