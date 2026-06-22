import 'package:wallet/src/core/theme/app_colors.dart';
import 'package:wallet/src/feactures/home/data/models/card_model.dart';

class CardData {
  //Todos los números de tarjeta son aleatorios, cualquier similitud es pura coincidencia.
  static List<CardModel> info = [
    CardModel(
      keyAccount: ['6037', '9975', '9598', '3090'],
      color: AppColors.blue,
      gradient: AppColors.grdientBlue,
    ),
    CardModel(
      keyAccount: ['1934', '8610', '3892', '0835'],
      color: AppColors.green,
      gradient: AppColors.grdientGreen,
    ),
    CardModel(
      keyAccount: ['5621', '2397', '5618', '3947'],
      color: AppColors.fiusha,
      gradient: AppColors.grdientFiusha,
    ),
    CardModel(
      keyAccount: ['6781', '4392', '0062', '8581'],
      color: AppColors.orange,
      gradient: AppColors.grdientOrange,
    ),
  ];
}
