// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:quitanda/src/config/custom_colors.dart';
import 'package:quitanda/src/models/cart-item_model.dart';
import 'package:quitanda/src/pages/common_widgets/quantity_widget.dart';
import 'package:quitanda/src/services/utils_services.dart';

class CartTile extends StatefulWidget {
  final CartItemModel cartItem;
  final Function(CartItemModel) remove;

  const CartTile({
    Key? key,
    required this.cartItem,
    required this.remove,
  }) : super(key: key);

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  final UtilsServices utilsServices = UtilsServices();


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(
        10,
        10,
        10,
        0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
          //Imagem
          leading: Image.asset(
            widget.cartItem.item.imgUrl,
            height: 60,
            width: 60,
          ),

          //Titulo

          title: Text(
            widget.cartItem.item.itemName,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),

          //Total

          subtitle: Text(
            utilsServices.priceToCurrency(widget.cartItem.totalPrice()),
            style: TextStyle(
              color: CustomColors.customSwatchColor,
              fontWeight: FontWeight.bold,
            ),
          ),

          //Quantidade
          trailing: QuantityWidget(
            suffixText: widget.cartItem.item.unit,
            value: widget.cartItem.quantity,
            result: (quantity) {
              setState(() {
                widget.cartItem.quantity = quantity;

                if (quantity == 0){

                  //remover item do carrinho

                  widget.remove(widget.cartItem);


                  
               
                }
              });
            },
            isRemovable: true,
          )),
    );
  }
}
