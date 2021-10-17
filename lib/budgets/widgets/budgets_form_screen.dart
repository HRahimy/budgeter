import 'package:flutter/material.dart';

class BudgetsFormScreen extends StatelessWidget {
  const BudgetsFormScreen({Key? key}) : super(key: key);
  static const String routeName = '/budgetsFormScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Budget Form'),
      ),
      body: _Form(),
    );
  }
}

class _Form extends StatelessWidget {
  _Form({Key? key}) : super(key: key);

  final GlobalKey<FormState> _budgetFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _budgetFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [_CurrencyInputField()],
        ),
      ),
    );
  }
}

class _CurrencyInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      onChanged: (value) {},
      items: const [
        DropdownMenuItem(
          value: 1,
          child: Text('first'),
        ),
        DropdownMenuItem(
          value: 2,
          child: Text('second'),
        ),
      ],
    );
  }
}
