import 'package:flutter/material.dart';
import '../organisms/dashboard_menu.dart';
import '../atoms/footer.dart' as footer;
import '../atoms/header.dart' as header;

class DashboardTemplate extends StatelessWidget {
  final VoidCallback onLogout;

  const DashboardTemplate({super.key, required this.onLogout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const header.Header(text: 'Credifácil'),
        actions: [
          IconButton(icon: const Icon(Icons.logout), onPressed: onLogout),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: DashboardMenu(
                  onCadastrarCliente: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Cadastrar Cliente")),
                    );
                  },
                  onVisualizarClientes: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Visualizar Clientes")),
                    );
                  },
                  onEsteira: () {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(const SnackBar(content: Text("Esteira")));
                  },
                  onGerarRelatorio: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Gerar Relatório")),
                    );
                  },
                ),
              ),
            ),
          ),
          const footer.Footer(text: 'MGK direitos reservados.'), 
        ],
      ),
    );
  }
}
