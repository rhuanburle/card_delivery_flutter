import 'dart:ffi';

class Pedido {
  final int id;
  final String order;
  final String codSap;
  final String dateDelivered;
  final String statusDelivered;
  final String statusPedido;
  final double valorPedido;
  final String nomeVarejo;

  Pedido({
    required this.id,
    required this.order,
    required this.codSap,
    required this.dateDelivered,
    required this.statusDelivered,
    required this.statusPedido,
    required this.valorPedido,
    required this.nomeVarejo,
  });
}
