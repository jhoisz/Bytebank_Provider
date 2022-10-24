import 'package:flutter/material.dart';

class Saldo extends ChangeNotifier {
  final double valor;

  Saldo(this.valor);

  @override
  String toString() {
    // TODO: implement toString
    return 'R\$ $valor';
  }
}
