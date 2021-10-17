import 'package:budgeter/models/budget.dart';
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
  List<DropdownMenuItem<Currency>> get _menuItems {
    return Currency.values.map((currency) {
      switch (currency) {
        case Currency.none:
          return DropdownMenuItem(
            value: currency,
            child: const Text('None'),
          );
        case Currency.afn:
          return DropdownMenuItem(
            value: currency,
            child: const Text('AFN'),
          );
        case Currency.usd:
          return DropdownMenuItem(
            value: currency,
            child: const Text('USD'),
          );
      }
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      onChanged: (value) {},
      decoration: const InputDecoration(labelText: 'Currency'),
      items: _menuItems,
    );
  }
}
