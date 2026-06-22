import 'package:wallet/src/core/assets/app_assets.dart';
import 'package:wallet/src/feactures/wallet/data/models/operation_model.dart';

class OperationsDataLocal {
  static final List<Operation> data = [
    Operation(title: 'Add', icon: AppAssets.add),
    Operation(title: 'Send', icon: AppAssets.send),
    Operation(title: 'Receive', icon: AppAssets.receive),
    Operation(title: 'Transfer', icon: AppAssets.transfer),
  ];
}
