import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/button.dart';
import 'cal_function.dart';
import 'constant.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SafeArea(
        child: Scaffold(
          body: Calculator(),
        ),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    displayInputs == null ? "" : "$displayInputs",
                    style: typeTextStyle,
                  ),
                  Visibility(
                    visible: result != null,
                    child: Text(
                      result == null ? "" : "$result",
                      style: kResultTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            CalculatorButton(
              text: "C",
              backgroundColor: kButtonBackground.withOpacity(0.3),
              textColor: kTextColorWhite,
              press: () {
                setState(
                  () {
                    calculation("C");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "()",
              backgroundColor: kButtonBackground.withOpacity(0.1),
              press: () {},
            ),
            CalculatorButton(
              text: "%",
              backgroundColor: kButtonBackground.withOpacity(0.1),
              press: () {},
            ),
            CalculatorButton(
              text: "/",
              backgroundColor: kButtonBackground.withOpacity(0.1),
              press: () {
                setState(
                  () {
                    calculation("/");
                  },
                );
              },
            ),
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorButton(
              text: "7",
              press: () {
                setState(
                  () {
                    calculation("7");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "8",
              press: () {
                setState(
                  () {
                    calculation("8");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "9",
              press: () {
                setState(
                  () {
                    calculation("9");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "x",
              backgroundColor: kButtonBackground.withOpacity(0.1),
              press: () {
                setState(
                  () {
                    calculation("x");
                  },
                );
              },
            ),
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorButton(
              text: "4",
              press: () {
                setState(
                  () {
                    calculation("4");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "5",
              press: () {
                setState(
                  () {
                    calculation("5");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "6",
              press: () {
                setState(
                  () {
                    calculation("6");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "-",
              press: () {
                setState(
                  () {
                    calculation("-");
                  },
                );
              },
              backgroundColor: kButtonBackground.withOpacity(0.1),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorButton(
              text: "1",
              press: () {
                setState(
                  () {
                    calculation("1");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "2",
              press: () {
                setState(
                  () {
                    calculation("2");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "3",
              press: () {
                setState(
                  () {
                    calculation("3");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "+",
              backgroundColor: kButtonBackground.withOpacity(0.1),
              press: () {
                setState(
                  () {
                    calculation("+");
                  },
                );
              },
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(),
            ),
            CalculatorButton(
              text: "0",
              press: () {
                setState(
                  () {
                    calculation("0");
                  },
                );
              },
            ),
            CalculatorButton(
              text: ".",
              press: () {
                setState(
                  () {
                    calculation(".");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "=",
              backgroundColor: kButtonBackground,
              textColor: kTextColorWhite,
              press: () {
                setState(
                  () {
                    calculation("=");
                  },
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
