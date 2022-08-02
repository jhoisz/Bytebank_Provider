import 'package:flutter/material.dart';

import '../../components/editor.dart';
import '../../models/transferencia.dart';

const String _tituloAppBar = 'Criando Transferência';
const String _rotuloCampoValor = 'Valor';
const String _dicaCampoValor = '0.00';

const String _rotuloCampoNumeroConta = 'Número da conta';
const String _dicaCampoNumeroConta = '0000';

const String _textoBotaoConfirmar = 'Confirmar';

class FormularioTransferencia extends StatefulWidget {
  const FormularioTransferencia({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FormulatrioTransferenciaState();
  }
}

class FormulatrioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              controlador: _controladorCampoNumeroConta,
              rotulo: _rotuloCampoNumeroConta,
              dica: _dicaCampoNumeroConta,
            ),
            Editor(
              controlador: _controladorCampoValor,
              rotulo: _rotuloCampoValor,
              dica: _dicaCampoValor,
              icone: Icons.monetization_on,
            ),
            ElevatedButton(
              onPressed: () {
                _criaTransferencia(context);
              },
              child: const Text(_textoBotaoConfirmar),
            )
          ],
        ),
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int? numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double? valor = double.tryParse(_controladorCampoValor.text);

    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(
        numeroConta,
        valor,
      );
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
