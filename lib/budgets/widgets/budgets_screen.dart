import 'package:budgeter/budgets/bloc/budgets_cubit.dart';
import 'package:budgeter/budgets/widgets/budgets_form_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BudgetsScreen extends StatelessWidget {
  const BudgetsScreen({Key? key}) : super(key: key);
  static const String routeName = '/budgetsScreen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BudgetsCubit(),
      child: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
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
          final bloc = BlocProvider.of<BudgetsCubit>(context);
          Navigator.pushNamed(
            context,
            BudgetsFormScreen.routeName,
            arguments: BudgetsFormScreenArgs(
              budgetsCubit: bloc,
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
