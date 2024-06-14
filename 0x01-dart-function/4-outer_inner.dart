void outer(String name, String id) {
  String result = inner(name, id);
  print(result);
}

String inner(String name, String id) {
  return 'Name: $name, ID: $id';
}
