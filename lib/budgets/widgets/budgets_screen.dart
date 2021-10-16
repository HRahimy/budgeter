import 'package:flutter/material.dart';

class BudgetsScreen extends StatelessWidget {
  const BudgetsScreen({Key? key}) : super(key: key);
  static const String routeName = '/budgetsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Budgets'),
      ),
      body: const Center(
        child: Text('Budgets screen'),
      ),
    );
  }
}
