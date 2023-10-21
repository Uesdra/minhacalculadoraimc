import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import '';

class Pessoa {
  String? _nome;
  double peso = 0.0;
  var altura = 0.0;

  String? leiaNome() {
    print('Digite seu nome');
    this._nome = stdin.readLineSync(encoding: utf8);
  }

  void setNome(String nome) {
    this._nome = nome;
  }

  String? getNome() {
    return _nome;
  }

  Double? leiaPeso() {
    print("Digite seu peso atual");
    String? kg = stdin.readLineSync(encoding: utf8);
    double numericValue = double.parse(kg.toString());
    this.peso = numericValue;
  }

  setPeso(double peso) {
    this.peso = peso;
  }

  getPeso() {
    return peso;
  }

  Double? leiaAltura() {
    print("Digite sua altura atual");
    String? mt = stdin.readLineSync(encoding: utf8);
    double numericValue = double.parse(mt.toString());
    this.altura = numericValue;
  }

  setAltura(double altura) {
    this.altura = altura;
  }

  double getAltura() {
    return altura;
  }
}
