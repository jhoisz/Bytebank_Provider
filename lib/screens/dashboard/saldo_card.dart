import 'package:bytebank/models/saldo.dart';
import 'package:flutter/material.dart';

class SaldoCard extends StatelessWidget {
  const SaldoCard({super.key, required this.saldo});
  final Saldo? saldo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          saldo.toString(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
