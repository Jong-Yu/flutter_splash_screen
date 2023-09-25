import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hello_world/component/number_row.dart';
import 'package:hello_world/constant/color.dart';
import 'package:hello_world/screen/randomNumber/settings_screen.dart';

class RandomNumber extends StatefulWidget {
  const RandomNumber({super.key});

  @override
  State<RandomNumber> createState() => _RandomNumberState();
}

class _RandomNumberState extends State<RandomNumber> {
  int maxNumber = 1000;
  List<int> randomNumbers = [
    123,
    456,
    789,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Header(
                onPressed: onSettingMaxNumber,
              ),
              _Body(randomNumbers: randomNumbers),
              _Footer(
                onPressed: onPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }

  onPressed() {
    final rand = Random();

    final Set<int> nextNumbers = {};

    while (nextNumbers.length != 3) {
      final number = rand.nextInt(maxNumber);

      nextNumbers.add(number);
    }

    setState(() {
      randomNumbers = nextNumbers.toList();
    });
  }

  void onSettingMaxNumber() async {
    final int? result = await Navigator.of(context).push<int>(
      MaterialPageRoute(builder: (BuildContext constext) {
        return SettingsScreen(
          maxNumber: maxNumber,
        );
      }),
    );

    if (result != null) {
      setState(() {
        maxNumber = result;
      });
    }
  }
}

class _Header extends StatelessWidget {
  final VoidCallback onPressed;
  const _Header({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '램덤숫자 생성기',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.settings,
            color: RED_COLOR,
          ),
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  final List<int> randomNumbers;
  const _Body({required this.randomNumbers, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: randomNumbers
            .asMap()
            .entries
            .map(
              (x) => Padding(
                padding: EdgeInsets.only(bottom: x.key == 2 ? 0 : 16.0),
                child: NumberRow(number: x.value),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  final VoidCallback onPressed;
  const _Footer({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text('생성하기!'),
        style: ElevatedButton.styleFrom(
          backgroundColor: RED_COLOR,
        ),
      ),
    );
  }
}
