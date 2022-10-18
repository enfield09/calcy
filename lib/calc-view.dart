import 'package:flutter/material.dart';

class Calc_View extends StatefulWidget {
  const Calc_View({Key? key}) : super(key: key);

  @override
  State<Calc_View> createState() => _Calc_ViewState();
}

class _Calc_ViewState extends State<Calc_View> {
  var answer = '';
  int prefix = 0;
  String operand = '';
  String operator = '';
  int sum = 0;
  var userInput = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      userInput,
                      style: TextStyle(fontSize: 50),
                    ),
                    Text(
                      '=12'+answer,
                      style: TextStyle(fontSize: 50, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('text'),
                          ),
                          ElevatedButton(
                            onPressed: () => del(),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('Del'),
                          ),
                          ElevatedButton(
                            onPressed: () => clear(),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('AC'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                mathFun('+');
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('+'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => getInt('7'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('7'),
                          ),
                          ElevatedButton(
                            onPressed: () => getInt('8'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('8'),
                          ),
                          ElevatedButton(
                            onPressed: () => getInt('9'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('9'),
                          ),
                          ElevatedButton(
                            onPressed: () => getInt('-'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('-'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => getInt('4'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('4'),
                          ),
                          ElevatedButton(
                            onPressed: () => getInt('5'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('5'),
                          ),
                          ElevatedButton(
                            onPressed: () => getInt('6'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('6'),
                          ),
                          ElevatedButton(
                            onPressed: () => getInt('*'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('*'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => getInt('1'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('1'),
                          ),
                          ElevatedButton(
                            onPressed: () => getInt('2'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('2'),
                          ),
                          ElevatedButton(
                            onPressed: () => getInt('3'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('3'),
                          ),
                          ElevatedButton(
                            onPressed: () => getInt('/'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('/'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => getInt('0'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('0'),
                          ),
                          ElevatedButton(
                            onPressed: () => getInt('-'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('.'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('text'),
                          ),
                          ElevatedButton(
                            onPressed: () => equalto(),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: const CircleBorder(),
                            ),
                            child: const Text('='),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getInt(var value) {
    operand = operand + value;
    setState(() {
      answer = answer + value;
    });
    if (prefix != 0) {
      print(prefix);
      sum = prefix + int.parse(operand);
      answer = sum.toString();
      userInput = prefix.toString() + operator + operand;
    }
  }

  void clear() {
    setState(() {
      answer = '';
      prefix = 0;
      operand = '';
      sum = 0;
      userInput = '';
    });
  }

  void del() {
    setState(() {
      answer = (answer.substring(0, answer.length - 1));
    });
  }

  void mathFun(var operatorvalue) {
    operator = operatorvalue;
    prefix = int.parse(answer);
    answer = answer + operatorvalue;
    operand = '';
  }

  void equalto() {
    setState(() {
      answer = sum.toString();
    });
  }
}
