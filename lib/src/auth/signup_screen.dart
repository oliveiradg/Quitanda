import 'package:flutter/material.dart';
import 'package:quitanda/src/auth/components/custom_text_field.dart';
import 'package:quitanda/src/config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const Expanded(
                child: Center(
                  child: Text(
                    'Cadastro',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),

              //Formulário de cadastro

              Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 40,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const CustomTextField(
                        icon: Icons.email,
                        label: 'Email',
                      ),
                      const CustomTextField(
                        icon: Icons.lock,
                        isSecret: true,
                        label: 'Senha',
                      ),
                      const CustomTextField(
                        icon: Icons.person,
                        label: 'Nome',
                      ),
                      const CustomTextField(
                        icon: Icons.phone,
                        label: 'Celular',
                      ),
                      const CustomTextField(
                        icon: Icons.file_copy,
                        label: 'CPF',
                      ),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Cadastrar Usuário',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
