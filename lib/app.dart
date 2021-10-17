import 'package:budgeter/budgeter_routes.dart';
import 'package:budgeter/budgeter_theme.dart';
import 'package:budgeter/budgets/widgets/budgets_screen.dart';
import 'package:flutter/material.dart';

class BudgeterApp extends StatelessWidget {
  const BudgeterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _App();
    // return MultiRepositoryProvider(
    //   providers: const [],
    //   child: MultiBlocProvider(
    //     providers: const [],
    //     child: _App(),
    //   ),
    // );
  }
}

class _App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<_App> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  // NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: BudgeterTheme.theme,
      navigatorKey: _navigatorKey,
      initialRoute: BudgetsScreen.routeName,
      routes: BudgeterRoutes().routes(context),
    );
  }
}
