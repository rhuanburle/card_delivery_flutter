import 'package:card_flutter_status_pedido/models/pedido.dart';
import 'package:flutter/material.dart';

class CardStatus extends StatefulWidget {
  const CardStatus({Key? key}) : super(key: key);

  @override
  State<CardStatus> createState() => _CardStatus();
}

final _pedidos = [
  Pedido(
      id: 1,
      order: 'ODR-2021-10-20-15969606',
      codSap: '005198650',
      dateDelivered: '11/11/2022',
      statusDelivered: 'Delivered',
      statusPedido: 'Confirmado',
      valorPedido: 9842.15,
      nomeVarejo: 'BARBEARIA DO PEÇANHA LTDA'),
  Pedido(
      id: 1,
      order: 'ODR-2021-10-20-25698415',
      codSap: '005198650',
      dateDelivered: '11/11/2022',
      statusDelivered: 'Delivered',
      statusPedido: 'Confirmado',
      valorPedido: 125.78,
      nomeVarejo: 'PADARIA DA ESQUINA LTDA'),
  Pedido(
      id: 1,
      order: 'ODR-2021-10-20-48769532',
      codSap: '005198650',
      dateDelivered: '10/10/2022',
      statusDelivered: 'Not Delivered',
      statusPedido: 'On Hold',
      valorPedido: 6874.96,
      nomeVarejo: 'IPREMIOS.COM'),
  Pedido(
      id: 1,
      order: 'ODR-2021-10-20-17649285',
      codSap: '005198650',
      dateDelivered: '09/09/2022',
      statusDelivered: 'Delivered',
      statusPedido: 'Confirmado',
      valorPedido: 3652.30,
      nomeVarejo: 'CASAS MESTRE DO TEMPERO LTDA'),
  Pedido(
      id: 1,
      order: 'ODR-2021-10-20-14523678',
      codSap: '005198650',
      dateDelivered: '08/07/2022',
      statusDelivered: 'Not Delivered',
      statusPedido: 'On Hold',
      valorPedido: 854.27,
      nomeVarejo: 'PANIFICAÇÃO MESTRE DO SABOR LTDA'),
];

class _CardStatus extends State<CardStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Status da entrega'),
        ),
        body: ListView.builder(
          itemCount: _pedidos.length,
          itemBuilder: (BuildContext context, int index) {
            return SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5, 4, 5, 4),
                            child: SizedBox(
                              width: 200,
                              height: 120,
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: const Color(0xFFF5F5F5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: const AlignmentDirectional(
                                            -1, -0.05),
                                        child: Container(
                                          width: 20,
                                          height: 120,
                                          decoration: const BoxDecoration(
                                            color: Color(0xFF96bd00),
                                          ),
                                          child: const Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Text('D',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(10, 5, 0, 5),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const Icon(
                                                  Icons.description_outlined,
                                                  color: Color(0xFF96bd00),
                                                  size: 15,
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.05, 0.05),
                                                  child: Text(
                                                      _pedidos[index]
                                                          .statusPedido,
                                                      style: const TextStyle(
                                                          color:
                                                              Color(0xFF96bd00),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          135, 0, 0, 0),
                                                  child: Row(
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 5, 0),
                                                        child: Icon(
                                                          Icons
                                                              .local_shipping_outlined,
                                                          size: 15,
                                                        ),
                                                      ),
                                                      Text(
                                                        _pedidos[index]
                                                            .statusDelivered,
                                                        style: const TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 4, 0, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    _pedidos[index].order,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.grey,
                                                        fontSize: 13),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(70, 0, 0, 0),
                                                    child: Text(
                                                        _pedidos[index]
                                                            .dateDelivered,
                                                        style: const TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: Colors.grey,
                                                            fontSize: 13)),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'R\$ ${_pedidos[index].valorPedido}',
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 10, 0, 2),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: const [
                                                  Text(
                                                    'Conecta BAT',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.grey,
                                                        fontSize: 14),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  '${_pedidos[index].codSap} - ${_pedidos[index].nomeVarejo}',
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.grey,
                                                      fontSize: 13,
                                                      fontFamily: 'ARIAL'),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(4, 0, 0, 0),
                                        child: Icon(
                                            Icons.arrow_forward_ios_outlined),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
