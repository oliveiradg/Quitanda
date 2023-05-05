// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:quitanda/src/models/order_model.dart';
import 'package:quitanda/src/services/utils_services.dart';

class OrderTile extends StatelessWidget {
  final orderModel order;

  OrderTile({
    Key? key,
    required this.order,
  }) : super(key: key);

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          title: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pedido: ${order.id}',
              ),
              Text(
                utilsServices.formatDateTime(order.createdDateTime),
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          children: [
            SizedBox(
              height: 150,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: ListView(
                        children: order.items.map((orderItem) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Row(
                          children: [
                            Text('${orderItem.quantity} ${orderItem.item.unit}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                            Expanded(
                              child: Text(
                                orderItem.item.itemName,
                              ),
                            ),
                            Text(
                              utilsServices.priceToCurrency(
                                orderItem.totalPrice(),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList()),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.blue,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
