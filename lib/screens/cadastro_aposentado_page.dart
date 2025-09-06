import 'package:flutter/material.dart';

class CadastroAposentadoPage extends StatelessWidget {
  const CadastroAposentadoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro Aposentado")),
      body: const Center(child: Text("Formulário para Aposentado")),
    );
  }
}
