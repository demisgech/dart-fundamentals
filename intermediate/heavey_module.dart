// some heavy models goes here

Future something(int a) async {
  return Stream.value(a);
}

Future<int> asyncFetch(int a) async {
  var result = await something(a);
  return result;
}
