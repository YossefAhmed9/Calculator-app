import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String fNumber = '0';
  String sNumber = '0';
  String operand = '+'; // + or - or * or /

  Widget defaultButton(double paddingRatio, Color? buttonColor, double? radius,
          Widget child) =>
      Container(
        width: 102,
        decoration: BoxDecoration(),
        child: CircleAvatar(
          backgroundColor: buttonColor,
          radius: radius,
          child: child,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Calculator app',
          style: TextStyle(
              fontWeight: FontWeight.w800, fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(38.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '10',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '$fNumber $operand $sNumber ',
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    defaultButton(
                        15,
                        Colors.grey,
                        43,
                        const Text(
                          'Delete',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 23),
                        )),
                    defaultButton(
                        15,
                        Colors.grey,
                        43,
                        const Text(
                          'Clear',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 23),
                        )),
                    defaultButton(
                        15,
                        Colors.orange,
                        43,
                        const Icon(
                          Icons.percent,
                          size: 43,
                        )),
                    defaultButton(15, Colors.orange, 43,
                        const Icon(Icons.close, size: 43)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    defaultButton(
                        15,
                        Colors.grey,
                        43,
                        const Text(
                          '7',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 38),
                        )),
                    defaultButton(
                        15,
                        Colors.grey,
                        43,
                        const Text(
                          '8',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 38),
                        )),
                    defaultButton(
                        15,
                        Colors.grey,
                        43,
                        const Text(
                          '9',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 38),
                        )),
                    defaultButton(15, Colors.orange, 43,
                        const Icon(CupertinoIcons.divide, size: 43)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    defaultButton(
                        15,
                        Colors.grey,
                        43,
                        const Text(
                          '6',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 38),
                        )),
                    defaultButton(
                        15,
                        Colors.grey,
                        43,
                        const Text(
                          '5',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 38),
                        )),
                    defaultButton(
                        15,
                        Colors.grey,
                        43,
                        const Text(
                          '4',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 38),
                        )),
                    defaultButton(15, Colors.grey, 43,
                        const Icon(CupertinoIcons.minus, size: 43)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    defaultButton(
                        15,
                        Colors.grey,
                        43,
                        const Text(
                          '3',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 38),
                        )),
                    defaultButton(
                        15,
                        Colors.grey,
                        43,
                        const Text(
                          '2',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 38),
                        )),
                    defaultButton(
                        15,
                        Colors.grey,
                        43,
                        const Text(
                          '1',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 38),
                        )),
                    defaultButton(
                        15, Colors.grey, 43, const Icon(Icons.add, size: 43)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(43),
                            color: Colors.grey),
                        child: defaultButton(
                            15,
                            Colors.grey,
                            43,
                            const Text(
                              '0',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 38),
                            )),
                      ),
                    ),
                    defaultButton(
                        15,
                        Colors.grey,
                        43,
                        const Text(
                          '.',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 38),
                        )),
                    defaultButton(15, Colors.grey, 43,
                        const Icon(CupertinoIcons.equal, size: 43)),
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
