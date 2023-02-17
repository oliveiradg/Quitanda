import 'package:flutter/material.dart';

class OrdersTab extends StatelessWidget {

  const OrdersTab({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Pedidos'),),
           body: ListView.separated(
            padding: const EdgeInsets.all(16),
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (_, index){
              return const SizedBox(height: 10,);
            },
            
            itemBuilder: (_, index){
              return Container(
                height: 100,
                color: Colors.red,
              );
            },
            itemCount: 10,
           ),
       );
  }
}