bool isPalindrome(int x) {
  if ((x < 0) || (x != 0 && x % 10 == 0)) return false;

  int reversed = 0;

  while (x > reversed) {
    reversed = (x % 10) + reversed * 10;
    x = x ~/ 10;
  }

  return (x == reversed || x == reversed ~/ 10);
}

void main(List<String> args) {
  print(isPalindrome(121));
}
