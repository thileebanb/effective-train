class Solution1 {
  List<int> twoSum(List<int> nums, int target) {
    final output = <int>[];

    if (nums.length == 2 && nums[0] == nums[1]) {
      return [0, 1];
    }

    for (int i = 0; i < nums.length; i++) {
      for (int j = 0; j < nums.length; j++) {
        if (i != j && nums[i] + nums[j] == target) {
          output.add(i);
          output.add(j);
          return output;
        }
      }
    }

    return output;
  }
}

class Solution2 {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[j] == target - nums[i]) {
          return [i, j];
        }
      }
    }
    return [];
  }
}

class Solution3 {
  List<int> twoSum(List<int> nums, int target) {
    final map = <int, int>{};

    for (int i = 0; i < nums.length; i++) {
      map.addAll({nums[i]: i});
    }

    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];

      if (map.containsKey(complement) && map[complement] != i) {
        return [i, map[complement]!];
      }
    }
    return [];
  }
}

class Solution4 {
  List<int> twoSum(List<int> nums, int target) {
    final map = <int, int>{};

    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];

      if (map.containsKey(complement)) {
        return [map[complement]!, i];
      }

      map.addAll({nums[i]: i});
    }
    return [];
  }
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    int s = 1;
    try {
      for (int i = 0; i < nums.length; i++) {
        if (nums[i] + nums[s] == target) {
          return [i, s];
        }
        s++;
      }
    } catch (e) {
      for (int i = 0; i < nums.length; i++) {
        for (int j = 1; j < nums.length; j++) {
          if (i == j) {
            continue;
          } else {
            if (nums[i] + nums[j] == target) {
              return [i, j];
            }
          }
        }
      }
    }
    return [];
  }
}
