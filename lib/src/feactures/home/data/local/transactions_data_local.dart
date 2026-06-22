import 'package:wallet/src/core/assets/app_assets.dart';
import 'package:wallet/src/feactures/home/data/models/transaction_model.dart';

class Transactions {
  static const String tenHoursAgo = '10 hours ago';
  static const String twelveHoursAgo = '12 hours ago';

  static List<TransactionModel> paymentOfServices = [
    TransactionModel(
      image: AppAssets.spotify,
      name: 'Spotify Subscriptions',
      elapsedTime: tenHoursAgo,
      amount: 19,
    ),
    TransactionModel(
      image: AppAssets.amazon,
      name: 'Toy Car Buy',
      elapsedTime: tenHoursAgo,
      amount: 24,
    ),
    TransactionModel(
      image: AppAssets.netflix,
      name: 'Netflix Subscription',
      elapsedTime: tenHoursAgo,
      amount: 19,
    ),
    TransactionModel(
      image: AppAssets.tvApple,
      name: 'Tv Apple',
      elapsedTime: tenHoursAgo,
      amount: 29,
    ),
    TransactionModel(
      image: AppAssets.googlePlay,
      name: 'Google Play',
      elapsedTime: twelveHoursAgo,
      amount: 23,
    ),
    TransactionModel(
      image: AppAssets.disney,
      name: 'Disney Subscription',
      elapsedTime: tenHoursAgo,
      amount: 27,
    ),
    TransactionModel(
      image: AppAssets.mercedes,
      name: 'Car Insurance',
      elapsedTime: tenHoursAgo,
      amount: 44,
    ),
  ];

  static List<TransactionModel> transactionsActivities = [
    TransactionModel(
      image: AppAssets.perfil2,
      name: 'Marnus Labuchange',
      elapsedTime: tenHoursAgo,
      amount: 19,
    ),
    TransactionModel(
      image: AppAssets.perfil3,
      name: 'Tinna Marchat',
      elapsedTime: twelveHoursAgo,
      amount: 24,
    ),
    TransactionModel(
      image: AppAssets.perfil4,
      name: 'Simmy Rayina',
      elapsedTime: tenHoursAgo,
      amount: 24,
    ),
    TransactionModel(
      image: AppAssets.perfil5,
      name: 'Sophia Rayina',
      elapsedTime: twelveHoursAgo,
      amount: 38,
    ),
  ];

  static List<TransactionModel> transactionsIcome = [
    TransactionModel(
      image: AppAssets.perfil6,
      name: 'Ana Wilson',
      elapsedTime: tenHoursAgo,
      amount: 24,
    ),
    TransactionModel(
      image: AppAssets.perfil7,
      name: 'María Miller',
      elapsedTime: tenHoursAgo,
      amount: 19,
    ),
    TransactionModel(
      image: AppAssets.perfil8,
      name: 'Sofía Brown',
      elapsedTime: tenHoursAgo,
      amount: 19,
    ),
  ];

  static List<TransactionModel> transactionsExpense = [
    TransactionModel(
      image: AppAssets.perfil4,
      name: 'Simmy Rayina',
      elapsedTime: tenHoursAgo,
      amount: 24,
    ),
    TransactionModel(
      image: AppAssets.perfil6,
      name: 'Ana Wilson',
      elapsedTime: tenHoursAgo,
      amount: 24,
    ),
    TransactionModel(
      image: AppAssets.perfil2,
      name: 'Marnus Labuchange',
      elapsedTime: tenHoursAgo,
      amount: 19,
    ),
    TransactionModel(
      image: AppAssets.perfil5,
      name: 'Sophia Rayina',
      elapsedTime: twelveHoursAgo,
      amount: 38,
    ),
  ];

  static List<TransactionModel> transactionsReceive = [
    TransactionModel(
      image: AppAssets.perfil9,
      name: 'Emma Clark',
      elapsedTime: twelveHoursAgo,
      amount: 38,
    ),
    TransactionModel(
      image: AppAssets.perfil10,
      name: 'Adriana Walker',
      elapsedTime: twelveHoursAgo,
      amount: 38,
    ),
  ];

  static Map<String, List<TransactionModel>> categoryTransactions = {
    'Activities': transactionsActivities,
    'Income': transactionsIcome,
    'Expense': transactionsExpense,
    'Receive': transactionsReceive,
  };
}
