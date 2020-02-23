main() {
  Map<String, double> notas = {
    "Saci": 10.0,
    "Curupira": 9.5,
  };

  for (String chave in notas.keys) {
    print("Chave = $chave");
  }

  for (String valor in notas.keys) {
    print("Valor = $valor");
  }

  for (var registro in notas.entries) {
    print("${registro.key} = ${registro.value}");
  }  
} 