import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:untitled/23_12_18/00_mock_pratice_02.dart';

void main() {
  test('문자열을 반전시켜서 출력되는지 확인', () {
    expect(reverseString('hello, world'), 'dlrow ,olleh');
  });
}
