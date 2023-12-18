import 'package:test/test.dart';
import 'package:untitled/23_12_18/00_mock_pratice_01.dart';

void main() {
  test('최대값의 결과가 잘 나와야한다', () {
    expect(findMax([1,2,3,4,5]), 5);
    expect(findMax([7,8,9,1,2]), 9);
    expect(findMax([7,2,3,2,6]), 7);

  });
}