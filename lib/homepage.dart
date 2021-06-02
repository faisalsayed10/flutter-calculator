import 'package:calculator_project/button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String value = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text("Flutter Calculator"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    value,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Button(
                  text: "7",
                  color: Colors.grey[300],
                  onPressed: () {
                    setState(() {
                      value = value + "7";
                    });
                  },
                ),
                Button(
                    text: "8",
                    color: Colors.grey[300],
                    onPressed: () {
                      setState(() {
                        value = value + "8";
                      });
                    }),
                Button(
                    text: "9",
                    color: Colors.grey[300],
                    onPressed: () {
                      setState(() {
                        value = value + "9";
                      });
                    }),
                Button(
                  text: "/",
                  color: Colors.orange,
                  onPressed: () {
                    if (value == "") return;
                    setState(() {
                      value = value + "/";
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                Button(
                  text: "4",
                  color: Colors.grey[300],
                  onPressed: () {
                    setState(() {
                      value = value + "4";
                    });
                  },
                ),
                Button(
                  text: "5",
                  color: Colors.grey[300],
                  onPressed: () {
                    setState(() {
                      value = value + "5";
                    });
                  },
                ),
                Button(
                  text: "6",
                  color: Colors.grey[300],
                  onPressed: () {
                    setState(() {
                      value = value + "6";
                    });
                  },
                ),
                Button(
                  text: "*",
                  color: Colors.orange,
                  onPressed: () {
                    if (value == "") return;
                    setState(() {
                      value = value + "*";
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                Button(
                  text: "1",
                  color: Colors.grey[300],
                  onPressed: () {
                    setState(() {
                      value = value + "1";
                    });
                  },
                ),
                Button(
                  text: "2",
                  color: Colors.grey[300],
                  onPressed: () {
                    setState(() {
                      value = value + "2";
                    });
                  },
                ),
                Button(
                  text: "3",
                  color: Colors.grey[300],
                  onPressed: () {
                    setState(() {
                      value = value + "3";
                    });
                  },
                ),
                Button(
                  text: "+",
                  color: Colors.orange,
                  onPressed: () {
                    if (value == "") return;
                    setState(() {
                      value = value + "+";
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                Button(
                  text: ".",
                  color: Colors.grey[300],
                  onPressed: () {
                    if (value == "") return;
                    setState(() {
                      value = value + ".";
                    });
                  },
                ),
                Button(
                  text: "0",
                  color: Colors.grey[300],
                  onPressed: () {
                    setState(() {
                      value = value + "0";
                    });
                  },
                ),
                Button(
                  text: "C",
                  color: Colors.grey[300],
                  onPressed: () {
                    if (value == "") return;
                    setState(() {
                      value = "";
                    });
                  },
                ),
                Button(
                  text: "-",
                  color: Colors.orange,
                  onPressed: () {
                    if (value == "") return;
                    setState(() {
                      value = value + "-";
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                Button(
                  text: "=",
                  color: Colors.grey[400],
                  onPressed: () {
                    if (value == "") return;
                    Parser p = new Parser();
                    ContextModel cm = ContextModel();
                    Expression exp = p.parse(value);
                    String result =
                        exp.evaluate(EvaluationType.REAL, cm).toString();

                    setState(() {
                      value = result;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
