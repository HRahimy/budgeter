import 'package:equatable/equatable.dart';

enum Currency { none, afn, usd }

class Budget extends Equatable {
  const Budget({
    required this.id,
    required this.name,
    required this.currency,
  });

  final String id;
  final String name;
  final Currency currency;

  @override
  List<Object> get props => [id, name, currency];

  static const empty = Budget(
    id: '-',
    name: '-',
    currency: Currency.none,
  );
}
