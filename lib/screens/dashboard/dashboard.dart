import 'package:bytebank/screens/dashboard/saldo_card.dart';
import 'package:bytebank/screens/deposito/formulario.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bytebank'),
      ),
      body: ListView(
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: SaldoCard(),
          ),
          ElevatedButton(
            onPressed: () {
              // saldo.adiciona(10);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FormularioDeposito();
                  },
                ),
              );
            },
            child: const Text('Receber depósito'),
          )
        ],
      ),
    );
  }
}
