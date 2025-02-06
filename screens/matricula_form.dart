import 'package:flutter/material.dart';
import '../components/custom_widgets.dart';
import '../services/cep_service.dart';

class MatriculaForm extends StatefulWidget {
  const MatriculaForm({super.key});

  @override
  _MatriculaFormState createState() => _MatriculaFormState();
}

class _MatriculaFormState extends State<MatriculaForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController cepController = TextEditingController();
  final TextEditingController ruaController = TextEditingController();
  final TextEditingController numeroController = TextEditingController();
  final TextEditingController cidadeController = TextEditingController();
  final TextEditingController estadoController = TextEditingController();
  bool concordaTermos = false;

  Future<void> buscarCEP() async {
    final String cep = cepController.text.replaceAll('-', '');
    if (cep.length == 8) {
      final data = await CepService.buscarCep(cep);
      if (data != null) {
        setState(() {
          ruaController.text = data['logradouro'] ?? '';
          cidadeController.text = data['localidade'] ?? '';
          estadoController.text = data['uf'] ?? '';
        });
      } else {
        _showErrorMessage('CEP não encontrado.');
      }
    }
  }

  void _fazerMatricula() {
    if (_formKey.currentState!.validate() && concordaTermos) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Matrícula realizada com sucesso!',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      _showErrorMessage('Preencha todos os campos corretamente.');
    }
  }

  void _limparFormulario() {
    setState(() {
      cepController.clear();
      ruaController.clear();
      numeroController.clear();
      cidadeController.clear();
      estadoController.clear();
      concordaTermos = false;
    });
  }

  void _showErrorMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Formulário de Matrícula',
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 8,
          shadowColor: Colors.blueAccent,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  CustomWidgets.buildTextField(
                    label: 'CEP',
                    controller: cepController,
                    inputType: TextInputType.number,
                    onChanged: buscarCEP,
                  ),
                  CustomWidgets.buildTextField(
                    label: 'Rua',
                    controller: ruaController,
                    inputType: TextInputType.text,
                  ),
                  CustomWidgets.buildTextField(
                    label: 'Número',
                    controller: numeroController,
                    inputType: TextInputType.number,
                  ),
                  CustomWidgets.buildTextField(
                    label: 'Cidade',
                    controller: cidadeController,
                    inputType: TextInputType.text,
                  ),
                  CustomWidgets.buildTextField(
                    label: 'Estado',
                    controller: estadoController,
                    inputType: TextInputType.text,
                  ),
                  const SizedBox(height: 16),
                  Row(children: [
                    Expanded(
                      child: CustomWidgets.buildActionButton(
                        label: 'Proximo',
                        onPressed: _fazerMatricula,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: CustomWidgets.buildActionButton(
                        label: 'Limpar ',
                        onPressed: _limparFormulario,
                      ),
                    ),
                  ]),
                  const SizedBox(height: 20),
                  CustomWidgets.buildTextButton(
                    label: 'Não sei meu CEP, clique aqui',
                    onPressed: () {
                      // Lógica para exibir outro campo de endereço
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
