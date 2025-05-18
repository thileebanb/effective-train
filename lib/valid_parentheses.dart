bool isValid(String s) {
  if (s.isEmpty || s.length % 2 != 0) return false;

  final parentheses = {'(': ')', '{': '}', '[': ']'};

  for (var p in parentheses.entries) {
    if ((s.contains(p.key) && !s.contains(p.value))) {
      return false;
    }
  }

  final strArray = s.split('');
  int openCount = 0;
  int closeCount = 0;
  for (var char in strArray) {
    if (parentheses.containsKey(char)) {
      openCount += 1;
    }
    if (parentheses.containsValue(char)) {
      closeCount += 1;
    }
    // if (!strArray.contains(parentheses[char]!)) {
    //   return false;
    // }
    // print('$char: index: ${strArray.indexOf(char)}');
    // print(strArray.indexOf(char));
  }

  if (openCount != closeCount) return false;

  return true;
}

void main(List<String> args) {
  print(isValid('([]({}({})))'));
}
