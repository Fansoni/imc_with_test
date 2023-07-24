import 'package:flutter/material.dart';
import 'package:imc/service/imc_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _pesoController = TextEditingController();
  final TextEditingController _alturaController = TextEditingController();
  double _imcResult = 0.0;
  String _imcText = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Calculadora de IMC',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  controller: _pesoController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Peso',
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed: () {
                      setState(() {
                        _imcResult = IMCService.calcularIMC(
                          double.parse(_pesoController.text),
                          double.parse(_alturaController.text),
                        );
                        _imcText = IMCService.classificarIMC(_imcResult);
                      });
                    },
                    child: const Text(
                      'CALCULAR',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Text('O Resultado é: ${_imcResult.toStringAsFixed(2)}'),
                Text(_imcText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
