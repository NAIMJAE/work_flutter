import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

void main() {
  int n1 = 10;
  double d1 = 10.1;
  bool b1 = true;
  String s1 = '홍길동';

  print('n1 : ${n1.runtimeType}');
  print('d1 : ${d1.runtimeType}');
  print('b1 : ${b1.runtimeType}');
  print('s1 : ${s1.runtimeType}');
  print('-----------------');

  var n2 = 10;
  var d2 = 10.1;
  var b2 = true;
  var s2 = '홍길동';

  print('n2 : ${n2.runtimeType}');
  print('d2 : ${d2.runtimeType}');
  print('b2 : ${b2.runtimeType}');
  print('s2 : ${s2.runtimeType}');
  print('-----------------');

  dynamic n3 = 10;
  dynamic d3 = 10.1;
  dynamic b3 = true;
  dynamic s3 = '홍길동';

  print('n3 : ${n3.runtimeType}');
  print('d3 : ${d3.runtimeType}');
  print('b3 : ${b3.runtimeType}');
  print('s3 : ${s3.runtimeType}');
  print('-----------------');

  n3 = 20.1;
  d3 = false;
  b3 = '홍길동';
  s3 = 10;

  print('n3 : ${n3.runtimeType}');
  print('d3 : ${d3.runtimeType}');
  print('b3 : ${b3.runtimeType}');
  print('s3 : ${s3.runtimeType}');
}
