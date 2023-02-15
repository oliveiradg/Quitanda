import 'package:flutter/material.dart';
import 'package:quitanda/src/pages/common_widgets/custom_text_field.dart';
import 'package:quitanda/src/config/app_data.dart' as appData;

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do Usuário'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: const [

          //Email
          CustomTextField(
            icon: Icons.email,
            label: 'Email',
          ),

          //Nome

          CustomTextField(
            icon: Icons.person,
            label: 'Nome',
          ),


          //Telefone

          CustomTextField(
            icon: Icons.phone_android,
            label: 'Celular',
          ),

          //CPF

          CustomTextField(
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
          ),

          //Botão atualizar a senha

                    CustomTextField(
            icon: Icons.email,
            label: 'Email',
          ),
        ],
      ),
    );
  }
}
