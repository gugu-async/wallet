import 'package:flutter_riverpod/legacy.dart';

final selectProvider = StateProvider.autoDispose<String>((ref) => "Activities");
final offsetY = StateProvider.autoDispose<double>((ref) => 0);
