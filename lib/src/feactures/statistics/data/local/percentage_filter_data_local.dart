import 'package:wallet/src/feactures/statistics/data/models/percentage_day_model.dart';
import 'package:wallet/src/feactures/statistics/data/models/percentage_filter_model.dart';

class PercentageFilterDataLocal {
  static List<PercentageFilterModel> data = [
    PercentageFilterModel(
      option: 'Activities',
      percentageDay: [
        PercentageDayModel(day: 'Sun', percentage: 90),
        PercentageDayModel(day: 'Mon', percentage: 85),
        PercentageDayModel(day: 'Tue', percentage: 50),
        PercentageDayModel(day: 'Wed', percentage: 70),
        PercentageDayModel(day: 'Thu', percentage: 40),
        PercentageDayModel(day: 'Fri', percentage: 80),
      ],
    ),
    PercentageFilterModel(
      option: 'Income',
      percentageDay: [
        PercentageDayModel(day: 'Sun', percentage: 20),
        PercentageDayModel(day: 'Mon', percentage: 35),
        PercentageDayModel(day: 'Tue', percentage: 80),
        PercentageDayModel(day: 'Wed', percentage: 50),
        PercentageDayModel(day: 'Thu', percentage: 60),
        PercentageDayModel(day: 'Fri', percentage: 50),
      ],
    ),
    PercentageFilterModel(
      option: 'Expense',
      percentageDay: [
        PercentageDayModel(day: 'Sun', percentage: 30),
        PercentageDayModel(day: 'Mon', percentage: 85),
        PercentageDayModel(day: 'Tue', percentage: 10),
        PercentageDayModel(day: 'Wed', percentage: 80),
        PercentageDayModel(day: 'Thu', percentage: 40),
        PercentageDayModel(day: 'Fri', percentage: 70),
      ],
    ),
    PercentageFilterModel(
      option: 'Receive',
      percentageDay: [
        PercentageDayModel(day: 'Sun', percentage: 90),
        PercentageDayModel(day: 'Mon', percentage: 15),
        PercentageDayModel(day: 'Tue', percentage: 50),
        PercentageDayModel(day: 'Wed', percentage: 70),
        PercentageDayModel(day: 'Thu', percentage: 30),
        PercentageDayModel(day: 'Fri', percentage: 50),
      ],
    ),
  ];
}
