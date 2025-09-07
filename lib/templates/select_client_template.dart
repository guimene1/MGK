import 'package:flutter/material.dart';
import '../organisms/select_client_type.dart';
import '../atoms/footer.dart' as footer;

class SelectClientTemplate extends StatelessWidget {
  const SelectClientTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastrar Cliente")),
      body: const Center(child: SelectClientType()),
      bottomNavigationBar: const footer.Footer(
        text: 'MGK direitos reservados.',
      ),
    );
  }
}
