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

  if (s.length == 0) {
    return 'none';
  }

  for (String s) {
    if (isPalindrome(s) && s.length > maxLength) {
      maxLength = s.length;
      longestPalindrome = s;
    }
  }
  return longestPalindrome;
}
