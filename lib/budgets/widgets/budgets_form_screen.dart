import 'package:budgeter/budgets/bloc/budgets_cubit.dart';
import 'package:budgeter/models/budget.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class BudgetsFormScreenArgs extends Equatable {
  const BudgetsFormScreenArgs({
    required this.budgetsCubit,
    this.editingBudget,
  });

  final BudgetsCubit budgetsCubit;
  final Budget? editingBudget;

  @override
  List<Object?> get props => [budgetsCubit, editingBudget];
}

class BudgetsFormScreen extends StatelessWidget {
  const BudgetsFormScreen({Key? key}) : super(key: key);
  static const String routeName = '/budgetsFormScreen';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    final args =
        ModalRoute.of(context)!.settings.arguments as BudgetsFormScreenArgs;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Budget Form'),
      ),
      body: _Form(editingBudget: args.editingBudget),
    );
  }
}

class _Form extends StatelessWidget {
  _Form({
    Key? key,
    this.editingBudget,
  }) : super(key: key);

  final Budget? editingBudget;
  final GlobalKey<FormState> _budgetFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _budgetFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Align(
          alignment: Alignment.center,
          child: ListView(
            shrinkWrap: true,
            children: [
              _CurrencyInputField(),
              const Padding(padding: EdgeInsets.only(top: 16)),
              _NameField(),
              const Padding(padding: EdgeInsets.only(top: 16)),
              _SubmitButton(),
              if (editingBudget != null) ...[
                const Padding(padding: EdgeInsets.only(top: 16)),
                _DeleteButton(),
              ]
            ],
          ),
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

class _NameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {},
      decoration: const InputDecoration(labelText: 'Name'),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('Save'),
    );
  }
}

class _DeleteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: const Text('Delete'),
      style: OutlinedButton.styleFrom(
        primary: Colors.red,
      ),
    );
  }
}
