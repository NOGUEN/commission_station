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
