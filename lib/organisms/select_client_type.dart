import 'package:flutter/material.dart';
import '../atoms/custom_button.dart';
import '../molecules/dropdown_field.dart';
import '../screens/cadastro_agricultor_page.dart';
import '../screens/cadastro_aposentado_page.dart';
import '../screens/cadastro_trabalhador_page.dart';
import '../screens/cadastro_fgts_page.dart';

class SelectClientType extends StatefulWidget {
  const SelectClientType({super.key});

  @override
  State<SelectClientType> createState() => _SelectClientTypeState();
}

class _SelectClientTypeState extends State<SelectClientType> {
  String? selectedOption;

  final List<String> options = [
    "Agricultor",
    "Aposentado",
    "Crédito Trabalhador",
    "FGTS",
  ];

  void _continue() {
    if (selectedOption == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Selecione uma opção primeiro.")),
      );
      return;
    }

    Widget nextPage;
    switch (selectedOption) {
      case "Agricultor":
        nextPage = const CadastroAgricultorPage();
        break;
      case "Aposentado":
        nextPage = const CadastroAposentadoPage();
        break;
      case "Crédito Trabalhador":
        nextPage = const CadastroTrabalhadorPage();
        break;
      case "FGTS":
        nextPage = const CadastroFgtsPage();
        break;
      default:
        return;
    }

    Navigator.push(context, MaterialPageRoute(builder: (_) => nextPage));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownField(
          label: "Tipo de Cliente",
          options: options,
          selectedValue: selectedOption,
          onChanged: (value) => setState(() => selectedOption = value),
        ),
        const SizedBox(height: 20),
        CustomButton(text: "Continuar", onPressed: _continue),
      ],
    );
  }
}
