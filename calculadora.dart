import 'dart:io';
class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calcularIMC() {
    if (peso <= 0 || altura <= 0) {
      throw Exception("O peso e a altura devem ser valores positivos.");
    }
    return peso / (altura * altura);
  }
}

void main() {
  try {
    print("Digite o nome da pessoa:");
    String nome = stdin.readLineSync() ?? "";
    
    print("Digite o peso da pessoa (em kg):");
    double peso = double.parse(stdin.readLineSync() ?? "0");
    
    print("Digite a altura da pessoa (em metros):");
    double altura = double.parse(stdin.readLineSync() ?? "0");

    Pessoa pessoa = Pessoa(nome, peso, altura);
    double imc = pessoa.calcularIMC();

    print("IMC de ${pessoa.nome}: $imc");
  } catch (e) {
    print("Erro: $e");
  }
}