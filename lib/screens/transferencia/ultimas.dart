import 'package:bytebank/models/transferencias.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'lista.dart';

const _titulo = "Últimas transferências";

class UltimasTransferencias extends StatelessWidget {
  const UltimasTransferencias({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          _titulo,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Consumer<Transferencias>(
          builder: (context, transferencias, child) {
            final ultimasTransferencias =
                transferencias.transferencias.reversed.toList();
            final quantidade = transferencias.transferencias.length;
            int tamanho = 2;

            if (quantidade == 0) return const SemTransferenciaCadastrada();

            quantidade < 2 ? tamanho = quantidade : tamanho = 2;

            return ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: tamanho,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ItemTransferencia(
                    transferencia: ultimasTransferencias[index],
                  );
                });
          },
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ListaTransferencias();
                },
              ),
            );
          },
          child: const Text('Ver todas transferências'),
        )
      ],
    );
  }
}

class SemTransferenciaCadastrada extends StatelessWidget {
  const SemTransferenciaCadastrada({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.all(40),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          'Você ainda não cadastrou nenhuma transferência',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
