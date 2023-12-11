void main() {
  try {
    final numString = '10.5';

    int num = int.parse(numString);
  } catch (e) {
    print('정수가 아닙니다 : $e');
  } finally {
    print('0');
  }
}
// void main() {
//     var intTen = int.parse('10');
//     print(intTen);
//     print(intTen.runtimeType);
// }
