import 'package:budgeter/budgets/widgets/budgets_form_screen.dart';
import 'package:budgeter/budgets/widgets/budgets_screen.dart';
import 'package:flutter/material.dart';

class BudgeterRoutes {
  Map<String, Widget Function(BuildContext context)> routes(
      BuildContext context) {
    return {
      BudgetsScreen.routeName: (context) => const BudgetsScreen(),
      BudgetsFormScreen.routeName: (context) => const BudgetsFormScreen(),
    };
  }
}
