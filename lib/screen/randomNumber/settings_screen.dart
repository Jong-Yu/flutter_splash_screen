import 'package:flutter/material.dart';
import 'package:hello_world/component/number_row.dart';

import '../../constant/color.dart';

class SettingsScreen extends StatefulWidget {
  final int maxNumber;
  const SettingsScreen({required this.maxNumber, super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double maxNumber = 1000;

  @override
  void initState() {
    super.initState();
    maxNumber = widget.maxNumber.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              _Body(
                maxNumber: maxNumber,
              ),
              _Footer(
                  maxNumber: maxNumber,
                  onChange: onChange,
                  onPressed: onPressed)
            ],
          ),
        ),
      ),
    );
  }

  void onChange(double value) {
    setState(() {
      maxNumber = value;
    });
  }

  void onPressed() {
    Navigator.of(context).pop(maxNumber.toInt());
  }
}

class _Body extends StatelessWidget {
  final double maxNumber;
  const _Body({required this.maxNumber, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: NumberRow(
      number: maxNumber.toInt(),
    ));
  }
}

class _Footer extends StatelessWidget {
  final double maxNumber;
  final ValueChanged<double> onChange;
  final VoidCallback onPressed;

  const _Footer(
      {required this.maxNumber,
      required this.onChange,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: maxNumber,
          min: 1000,
          max: 100000,
          onChanged: onChange,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(backgroundColor: RED_COLOR),
            child: Text('저장'),
          ),
        )
      ],
    );
  }
}
