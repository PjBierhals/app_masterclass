import 'package:app_masterclass/models/cpf_model.dart';

void main() {
  final cpfTest = CpfModel(cpfNumber: '07378300772');
  print(cpfTest.getIsValid());
  final cpfTest1 = CpfModel(cpfNumber: '74712383055');
  print(cpfTest1.getIsValid());
  final cpfTest2 = CpfModel(cpfNumber: '11111111111');
  print(cpfTest2.getIsValid());
  

}
