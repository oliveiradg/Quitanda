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
        children: [
          //Email
          CustomTextField(
            readOnly: true,
            initialValue: appData.user.email,
            icon: Icons.email,
            label: 'Email',
          ),

          //Nome

          CustomTextField(
            readOnly: true,
            initialValue: appData.user.name,
            icon: Icons.person,
            label: 'Nome',
          ),

          //Telefone

          CustomTextField(
            readOnly: true,
            initialValue: appData.user.celular,
            icon: Icons.phone_android,
            label: 'Celular',
          ),

          //CPF

          CustomTextField(
            readOnly: true,
            initialValue: appData.user.cpf,
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
          ),

          //Botão atualizar a senha

          SizedBox(
            width: double.infinity,
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Text('Atualizar senha'),
            ),
          ),
        ],
      ),
    );
  }
}
