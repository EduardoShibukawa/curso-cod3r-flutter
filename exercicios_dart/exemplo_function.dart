int exec(int a, int b, Function(int, int) fn) {
  return fn(a,b);
}

main() {
  final r = exec(2, 3, (a,b) => a * b + 1000);
  final r2 = exec(2, 3, (a,b) {
    return a * b + 2000;
  });

  print("O resultado é r: $r!");
  print("O resultado é r2: $r2!"); 
}