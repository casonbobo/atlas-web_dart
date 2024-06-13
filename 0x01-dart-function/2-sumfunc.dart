int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  int sum = add(a, b);
  int dif = sub(a, b);
  return 'Add $a + $b = $sum \n Sub $a - $b = $dif';
}
