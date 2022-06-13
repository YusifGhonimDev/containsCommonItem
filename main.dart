void main() {
  List<String> array1 = ['a', 'b', 'c', 'x'];
  List<String> array2 = ['z', 'y', 'x'];

  print(containsCommonItem(array1, array2));
  print(containsCommonItem2(array1, array2));
  print(containsCommonItem3(array1, array2));
}

bool containsCommonItem(List<String> array1, List<String> array2) {
  for (String item1 in array1) {
    for (String item2 in array2) {
      if (item1 == item2) {
        return true;
      }
    }
  }
  return false;
}

bool containsCommonItem2(List<String> array1, List<String> array2) {
  Map<String, bool> map = {};
  for (String item in array1) {
    map[item] = true;
  }
  for (String item in array2) {
    if (map[item] == true) {
      return true;
    }
  }
  return false;
}

bool containsCommonItem3(List<String> array1, List<String> array2) {
  Set<String> set1 = Set.from(array1);
  Set<String> set2 = Set.from(array2);
  return set1.intersection(set2).isNotEmpty;
}
