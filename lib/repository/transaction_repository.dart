import 'package:expenses_app/model/transaction.dart';

class TransactionRepository {
  static List<Transaction> fetchList() {
    return [
      Transaction(
          id: "6eb12ce4-cc57-4f93-b1b0-0588898b5c31",
          title: 'Vans OLD Skool',
          amount: 400.00,
          date: DateTime.now()),
      Transaction(
          id: "fcc008dc-4bd0-47b2-b4bf-352562707c92",
          title: 'Echo dot 3',
          amount: 299.00,
          date: DateTime.now())
    ];
  }
}
