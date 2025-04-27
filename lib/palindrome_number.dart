bool isPalindrome(int x) {
  if (x < 0) return false;

  int reversed = 0;
  int original = x;

  while (x != 0) {
    reversed = (x % 10) + reversed * 10;
    x = x ~/ 10;
  }

  return (original == reversed);
}

void main(List<String> args) {
  print(isPalindrome(121));
}
