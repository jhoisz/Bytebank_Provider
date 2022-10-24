import 'package:bytebank/screens/transferencia/formulario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/transferencia.dart';
import '../../models/transferencias.dart';

const String _tituloAppBar = 'Transferências';

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_tituloAppBar),
      ),
      body: Consumer<Transferencias>(
        builder: ((context, transferencias, child) {
          return ListView.builder(
            itemCount: transferencias.transferencias.length,
            itemBuilder: (context, index) {
              final transferencia = transferencias.transferencias[index];
              return ItemTransferencia(transferencia: transferencia);
            },
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormularioTransferencia(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  // void _atualiza(Transferencia? transferenciaRecebida) {
  //   if (transferenciaRecebida != null) {
  //     setState(() {
  //       widget._transferencias.add(transferenciaRecebida);
  //     });
  //   }
  // }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia transferencia;

  const ItemTransferencia({Key? key, required this.transferencia})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(transferencia.toStringValor()),
        subtitle: Text(transferencia.toStringConta()),
      ),
    );
  }
}
