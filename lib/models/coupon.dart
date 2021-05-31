import 'package:flutter/foundation.dart';

class Cupom {
  final String id;
  final String title;
  final double value;
  final DateTime date;

  Cupom({
    @required this.id,
    @required this.title,
    @required this.value,
    @required this.date,
  });
}
