int keywordCount({required String src, required String keyword}) {
  int s = 0;
  int count = 0;
  List<int> shift = List<int>.filled(keyword.length + 1, 0);
  List<int> bpos = List<int>.filled(keyword.length + 1, 0);

  while (s <= src.length - keyword.length) {
    int j = keyword.length - 1;

    while (j >= 0 && keyword[j] == src[s + j]) {
      j--;
    }

    if (j < 0) {
      print("pattern occurs at shift = $s\n");
      count += 1;
      s += shift[0];
    } else {
      s += shift[j + 1];
    }
  }
  return count;
}

Map<String, int> countKeywords(String text, List<String> keywords) {
  Map<String, int> keywordCount = {};
  for (String keyword in keywords) {
    keywordCount[keyword] = 0;
  }

  int m = keywords[0].length;
  int n = text.length;
  int i = 0;

  Map<String, int> badCharacterTable = buildBadCharacterTable(keywords[0]);

  while (i <= n - m) {
    int j = m - 1;
    while (j >= 0 && text[i + j] == keywords[0][j]) {
      j--;
    }

    if (j == -1) {
      for (String keyword in keywords) {
        keywordCount[keyword] = (keywordCount[keyword] ?? 0) + 1;
      }
      i += m;
    } else {
      int shift = j - (badCharacterTable[text[i + j]] ?? -1);
      if (shift < 1) {
        shift = 1;
      }
      i += shift;
    }
  }

  return keywordCount;
}

Map<String, int> buildBadCharacterTable(String pattern) {
  Map<String, int> table = {};
  for (int i = 0; i < pattern.length; i++) {
    table[pattern[i]] = i;
  }
  return table;
}
