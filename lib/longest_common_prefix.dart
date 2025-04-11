String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty) return '';

  String prefix = strs[0];

  for (var i = 0; i < strs.length; i++) {
    while (!strs[i].startsWith(prefix)) {
      prefix = prefix.substring(0, prefix.length - 1);

      if (prefix == '') return '';
    }
  }

  return prefix;
}

void main() {
  final strs = ["flower", "flow", "flight"];
  print(longestCommonPrefix(strs) == 'fl');
}
