class Solution1 {
  int romanToInt(String s) {
    final roman = <String, int>{
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000
    };

    int result = 0;

    final str = s.split('');
    final list = str.asMap().entries.toList(growable: false);

    for (var e in list) {
      if (e.key != 0 && roman[e.value]! > roman[list[e.key - 1].value]!) {
        result = result + roman[e.value]! - (2 * roman[list[e.key - 1].value]!);
      } else {
        result += roman[e.value]!;
      }
    }

    return result;
  }
}

class Solution2 {
  int romanToInt(String s) {
    int ans = 0, num = 0;
    // Loop from the end of the string to the beginning
    for (int i = s.length - 1; i >= 0; i--) {
      // Assign numeral values to the corresponding Roman letters
      switch (s[i]) {
        case 'I':
          num = 1;
          break;
        case 'V':
          num = 5;
          break;
        case 'X':
          num = 10;
          break;
        case 'L':
          num = 50;
          break;
        case 'C':
          num = 100;
          break;
        case 'D':
          num = 500;
          break;
        case 'M':
          num = 1000;
          break;
      }

      // If the current value is smaller, subtract; otherwise, add
      if (4 * num < ans) {
        ans -= num;
      } else {
        ans += num;
      }
    }

    return ans;
  }
}

class Solution3 {
  int romanToInt(String s) {
    final map = <String, int>{
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000
    };

    int i = s.length - 1;
    int result = map[s[i]]!;

    while (true) {
      i--;
      if (i < 0) break;
      if (map[s[i]]! < map[s[i + 1]]!) {
        result -= map[s[i]]!;
      } else {
        result += map[s[i]]!;
      }
    }

    return result;
  }
}

class Solution {
  int romanToInt(String s) {
    final map = <String, int>{
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000
    };

    int i = s.length - 1;
    int result = map[s[i]]!;

    do {
      i--;
      if (i < 0) break;
      result = map[s[i]]! < map[s[i + 1]]!
          ? result - map[s[i]]!
          : result + map[s[i]]!;
    } while (true);

    return result;
  }
}

void main() {
  print(Solution().romanToInt('IV'));
}
