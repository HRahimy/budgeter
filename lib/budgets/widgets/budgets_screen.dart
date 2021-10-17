import 'package:budgeter/budgets/widgets/budgets_form_screen.dart';
import 'package:flutter/material.dart';

class BudgetsScreen extends StatelessWidget {
  const BudgetsScreen({Key? key}) : super(key: key);
  static const String routeName = '/budgetsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Budgets'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.list),
          )
        ],
      ),
      body: const Center(
        child: Text('Budgets screen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            BudgetsFormScreen.routeName,
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
