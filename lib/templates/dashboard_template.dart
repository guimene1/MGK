import 'package:flutter/material.dart';
import '../organisms/dashboard_menu.dart';

class DashboardTemplate extends StatelessWidget {
  final VoidCallback onLogout;

  const DashboardTemplate({super.key, required this.onLogout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: onLogout,
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: DashboardMenu(
            onCadastrarCliente: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Cadastrar Cliente")),
              );
              // página: navegar para página de cadastro
            },
            onVisualizarClientes: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Visualizar Clientes")),
              );
              // página: navegar para lista de clientes
            },
            onEsteira: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Esteira")),
              );
              // página: implementar esteira
            },
            onGerarRelatorio: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Gerar Relatório")),
              );
              // página: gerar relatório
            },
          ),
        ),
      ),
    );
  }
}
