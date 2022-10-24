class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.numeroConta, this.valor);

  String toStringValor() {
    return 'R\$ $valor';
  }

  String toStringConta() {
    return 'Conta: $numeroConta';
  }
}
