part of 'budgets_cubit.dart';

class BudgetsState extends Equatable {
  const BudgetsState({
    this.budgets = const [],
  });

  final List<Budget> budgets;

  @override
  List<Object> get props => [budgets];
}
