import 'package:flutter/material.dart';
import '../atoms/custom_button.dart';
import '../molecules/login_field.dart';
import '../data/db_helper.dart';
import '../screens/dashboard_page.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final dbHelper = DatabaseHelper.instance;

  void _login() async {
    String cpf = cpfController.text.trim();
    String senha = senhaController.text.trim();

    bool valid = await dbHelper.validateLogin(cpf, senha);

    if (valid) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const DashboardPage()),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("CPF ou senha inválidos.")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginField(controller: cpfController, label: "CPF"),
        LoginField(
          controller: senhaController,
          label: "Senha",
          isPassword: true,
        ),
        const SizedBox(height: 20),
        CustomButton(text: "Entrar", onPressed: _login),
      ],
    );
  }
}
