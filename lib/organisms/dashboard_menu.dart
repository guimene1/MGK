import 'package:flutter/material.dart';
import '../atoms/custom_button.dart';
import '../atoms/custom_text.dart';
import '../screens/select_client_page.dart';

class DashboardMenu extends StatelessWidget {
  final VoidCallback onCadastrarCliente;
  final VoidCallback onVisualizarClientes;
  final VoidCallback onEsteira;
  final VoidCallback onGerarRelatorio;

  const DashboardMenu({
    super.key,
    required this.onCadastrarCliente,
    required this.onVisualizarClientes,
    required this.onEsteira,
    required this.onGerarRelatorio,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: "Menu Principal",
          size: 24,
          weight: FontWeight.bold,
          color: Colors.green.shade900,
        ),
        const SizedBox(height: 60),

        // Botões
        CustomButton(
          text: "Cadastrar Cliente",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SelectClientPage()),
            );
          },
        ),
        const SizedBox(height: 15),
        CustomButton(
          text: "Visualizar Clientes",
          onPressed: onVisualizarClientes,
        ),
        const SizedBox(height: 15),
        CustomButton(text: "Esteira", onPressed: onEsteira),
        const SizedBox(height: 15),
        CustomButton(text: "Gerar Relatório", onPressed: onGerarRelatorio),
      ],
    );
  }
}
