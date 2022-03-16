import 'dart:math';

class CpfModel {
  final String cpfNumber;
  CpfModel({required this.cpfNumber});

  bool getIsValid() {
    var auxVez = 0;
    var validateCpf = contNumberRep();
    if (validateCpf == true) {
      final convertcpf = cpfNumber.split('').map((e) => int.parse(e)).toList();
      do {
        var resultFinal = 0;
        var digito = 9;
        var multip = 10;
        if (auxVez == 1) {
          multip = 11;
          digito = digito + 1;
          resultFinal = 0;
        }
        for (var i = 0; i < digito; i++) {
          var result = convertcpf[i] * multip;

          resultFinal = result + resultFinal;
          multip--;
        }
        var value = 11 - (resultFinal % 11);
        if (value != convertcpf[digito]) {
          auxVez = 2;
          validateCpf = false;
        } else {
          auxVez++;
        }
      } while (auxVez < 2);
    }

    return validateCpf;
  }

  bool contNumberRep() {
    var aux = true;
    if (cpfNumber.length == 11) {
      final convertcpf = cpfNumber.split('').map((e) => int.parse(e)).toList();
      for (int i = 0; i < convertcpf.length; i++) {
        var count = 0;
        for (int j = 0; j < convertcpf.length; j++) {
          if (convertcpf[i] == convertcpf[j]) {
            count++;
          }
        }
        if (count > 9) {
          aux = false;
          return aux;
        }
      }
    } else {
      aux = false;
    }
    return aux;
  }

  List get generateNumberCpf {
    var cpfNine = [];
    var auxVez = 0;
    for (var i = 0; i <= 8; i++) {
      cpfNine.add(Random().nextInt(10));
    }
    var listCpf = cpfNine;
    do {
      var resultFinal = 0;
      var digito = 9;
      var multip = 10;
      if (auxVez == 1) {
        multip = 11;
        digito = digito + 1;
        resultFinal = 0;
      }
      for (var i = 0; i < digito; i++) {
        var result = listCpf[i] * multip;

        resultFinal = result + resultFinal;
        multip--;
      }
      var value = 11 - (resultFinal % 11);
      cpfNine.add(value);
      auxVez++;
    } while (auxVez < 2);

    return cpfNine;
  }
}
