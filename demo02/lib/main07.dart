// 03. 논리 연산자
void main() {
  bool isRainy = true;
  bool hasUmbrella = false;

  // AND
  print(isRainy && hasUmbrella); // false
  print(hasUmbrella && isRainy); // false

  // OR
  print(hasUmbrella || isRainy); // true
  print(isRainy || hasUmbrella); // true

  // NOT
  print(!isRainy); // false
  print(!hasUmbrella); // true
}
