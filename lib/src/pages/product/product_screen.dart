import 'package:flutter/material.dart';
import 'package:quitanda/src/config/custom_colors.dart';
import 'package:quitanda/src/models/item_model.dart';
import 'package:quitanda/src/services/utils_services.dart';

class ProductScreen extends StatelessWidget {
   ProductScreen({Key? key, required this.item}) : super(key: key);

  final ItemModel item;
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      body: Column(
        children: [
          Expanded(child: Image.asset(item.imgUrl)),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(32.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade600,
                      offset: const Offset(0, 2),
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //nome - quantidade
                  Row(
                    children: 
                      [Expanded(
                        child: Text(
                          item.itemName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 70,
                        color: Colors.red,
                      )
                    ],
                  ),
                  //preço - unidade
                  Text(
                    utilsServices.priceToCurrency(item.price),
                    style:  TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.customSwatchColor,
                    ),
                  ),


                  //descrição
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SingleChildScrollView(
                        child: Text(
                          item.description,
                          style: const TextStyle(
                            height: 1.5,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  //botão

                  ElevatedButton(onPressed: (){}, child: Text('Adicionar ao carrinho'), ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
