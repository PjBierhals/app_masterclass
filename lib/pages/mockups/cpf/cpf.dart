
import 'package:app_masterclass/components/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../models/cpf_model.dart';

class CpfsPage extends StatefulWidget {
  const CpfsPage({Key? key}) : super(key: key);

  @override
  State<CpfsPage> createState() => _CpfPageState();
}

class _CpfPageState extends State<CpfsPage> {
  var result = 'Resultado';
  var cpf = '';
 

  _validaCPF() {
    final model = CpfModel(cpfNumber: cpf);
    final resultValido = model.getIsValid();

    if (cpf.length > 11 || resultValido == false) {
      result = 'CPF INVALIDO';
    } else {
      result = 'CPF VALIDO';
    }
    setState(() {});
  }

  _geraCPF() {
    final model = CpfModel(cpfNumber: '');
    result = model.generateNumberCpf.join(" ");

    setState(() {});
  }

  final maskCpf = MaskTextInputFormatter(
      mask: "###.###.###-##", filter: {"#": RegExp(r'[0-9]')});

  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        context: context,
        title: 'Gerador e Validador CPF',
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [maskCpf],
              style: Theme.of(context).textTheme.headline1,
              onChanged: (text) {
                text = maskCpf.getUnmaskedText();
                cpf = text;
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                labelText: 'Entre Com CPF',
                labelStyle: Theme.of(context).textTheme.headline2,
                hintText: 'Digite o Número',
                hintStyle: Theme.of(context).textTheme.headline2,
                filled: true,
                fillColor: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _geraCPF,
                  child: const Text('Gerar'),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _validaCPF,
                  child: const Text('Validar'),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
                child: Center(
              child: Text(
                result,
                style: Theme.of(context).textTheme.headline1,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
