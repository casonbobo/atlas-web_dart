bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }

  int start = 0;
  int end = s.length - 1;

  while (start < end) {
    if (s[start] != s[end]) {
      return false;
    }
    start++;
    end--;
  }

  return true;
}

String longestPalindrome(String s) {
  int maxLength = 0;
  String longestPalindrome = "";

  if (s.length < 3) {
    return 'none';
  }

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > maxLength) {
        maxLength = substring.length;
        longestPalindrome = substring;
      }
    }
  }

  return longestPalindrome.isNotEmpty ? longestPalindrome : 'none';
}
