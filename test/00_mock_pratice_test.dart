import 'package:test/test.dart';
import 'package:untitled/23_12_18/00_mock_pratice.dart';


void main() {
  test('짝수 홀수가 잘 나와야 한다', () {
    expect(isEven(4), true);
    expect(isEven(7), true);
    expect(isEven(5), true);
  });
}
