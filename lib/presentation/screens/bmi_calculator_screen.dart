import 'package:bmi_calculator_app/presentation/widgets/bmi_reference_table.dart';
import 'package:bmi_calculator_app/presentation/widgets/input_card.dart';
import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatefulWidget {
  const BmiCalculatorScreen({super.key});

  @override
  State<BmiCalculatorScreen> createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {
  final _heightController=TextEditingController();
  final _weightController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          InputCard(heightController: _heightController, weightController: _weightController),
          BmiReferenceTable(),
        ],
      ),
    );
  }
}