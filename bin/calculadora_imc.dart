import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:calculadora_imc/Classes/Pessoa.dart';

void main(List<String> arguments) {
  var p1 = new Pessoa();
  p1.leiaNome();
  p1.leiaPeso();
  p1.leiaAltura();
  double imc = p1.peso / (p1.altura * p1.altura).ceil();
  try {
    imc == double;
  } catch (e) {}
  print("Seu imc é $imc");
  if (imc < 16) {
    print('Magreza Grave');
  }
  if (imc >= 16 && imc <= 17) {
    print('Magreza Moderada');
  }
  if (imc >= 17 && imc < 18.5) {
    print('Magreza Leve');
  }
  if (imc >= 18.5 && imc < 25) {
    print('Saudavel');
  }
  if (imc >= 25 && imc < 30) {
    print('Sobrepeso');
  }
  if (imc >= 30 && imc < 35) {
    print('Obesidade Grau 1');
  }
  if (imc >= 35 && imc < 40) {
    print('Obesidade Grau 2(SEVERA)');
  }
  if (imc >= 40) {
    print('Obesidade Grau 3(MORBIDA)');
  }
}
