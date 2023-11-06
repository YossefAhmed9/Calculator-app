import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  Widget defaultButton(double paddingRatio, Color? buttonColor, double? radius,
          Widget child) =>
      GestureDetector(
        onTap: () {
          print('Button Pressed + ${child}');
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingRatio - 5),
          child: CircleAvatar(
            backgroundColor: buttonColor,
            radius: radius,
            child: child,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator app',
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment.bottomRight,
                child: const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    '000000000',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
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
                        40,
                        const Text(
                          'Delete',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        )),
                    defaultButton(
                        15,
                        Colors.grey,
                        40,
                        const Text(
                          'Clear',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        )),
                    defaultButton(
                        15,
                        Colors.orange,
                        40,
                        const Icon(
                          Icons.percent,
                          size: 40,
                        )),
                    defaultButton(15, Colors.orange, 40,
                        const Icon(Icons.close, size: 40)),
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
                        40,
                        const Text(
                          '7',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        )),
                    defaultButton(
                        15,
                        Colors.grey,
                        40,
                        const Text(
                          '8',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        )),
                    defaultButton(
                        15,
                        Colors.grey,
                        40,
                        const Text(
                          '9',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        )),
                    defaultButton(15, Colors.orange, 40,
                        const Icon(CupertinoIcons.divide, size: 40)),
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
                        40,
                        const Text(
                          '6',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        )),
                    defaultButton(
                        15,
                        Colors.grey,
                        40,
                        const Text(
                          '5',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        )),
                    defaultButton(
                        15,
                        Colors.grey,
                        40,
                        const Text(
                          '4',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        )),
                    defaultButton(15, Colors.grey, 40,
                        const Icon(CupertinoIcons.minus, size: 40)),
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
                        40,
                        const Text(
                          '3',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        )),
                    defaultButton(
                        15,
                        Colors.grey,
                        40,
                        const Text(
                          '2',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        )),
                    defaultButton(
                        15,
                        Colors.grey,
                        40,
                        const Text(
                          '1',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        )),
                    defaultButton(
                        15, Colors.grey, 40, const Icon(Icons.add, size: 40)),
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
                        40,
                        const Text(
                          '0',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        )),
                    defaultButton(
                        15,
                        Colors.grey,
                        40,
                        const Text(
                          '.',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        )),
                    defaultButton(15, Colors.grey, 40,
                        const Icon(CupertinoIcons.equal, size: 40)),
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
