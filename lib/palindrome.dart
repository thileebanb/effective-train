bool isPalindrome(String str) {
  str = str.toLowerCase();

  final regex = RegExp(r'[^a-z0-9]');
  if (str.contains(regex)) {
    final alphaNumArray = [];
    final stringArray = str.split('');
    for (var s in stringArray) {
      if (!s.contains(regex)) {
        alphaNumArray.add(s);
      }
    }

    str = alphaNumArray.join();
  }

  final reversed = str.split('').reversed.join();

  return str == reversed;
}

void main(List<String> args) {
  print(isPalindrome('race a car'));
}
