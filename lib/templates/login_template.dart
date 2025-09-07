import 'package:flutter/material.dart';
import '../atoms/custom_text.dart';
import '../organisms/login_form.dart';
import '../atoms/footer.dart' as footer;
class LoginTemplate extends StatelessWidget {
  const LoginTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CustomText(
              text: "Credifácil",
              size: 28,
              weight: FontWeight.bold,
              color: Colors.green,
            ),
            SizedBox(height: 20),
            CustomText(text: "Login", size: 26, weight: FontWeight.bold),
            SizedBox(height: 20),
            LoginForm(),
          ],
        ),
      ),
      bottomNavigationBar: const footer.Footer(text: 'MGK direitos reservados.'),
    );
  }
}
