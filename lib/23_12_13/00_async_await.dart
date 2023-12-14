// sample.csv 파일을 읽어와서 “한석봉" 이라는 문자열이 있는지 찾고,
// 있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오.
// (async - await 사용할 것)

import 'dart:io';
//인자값을 2개 받는다
Future<void> employeeMembers(String member, String member_copy) async {
  //읽어오기
  File sample = File(member);
  File sample_copy = File(member_copy);
// nameModified 변수에 읽어 놓는다
  final nameModified = await sample.readAsString();

  //한석봉이 있는지 contains 한 후에 있다면 replaceAll로 변경시도
  if (nameModified.contains('한석봉')) {
    sample.toString().replaceAll('한석봉', '김석봉');
  }
  //있었으면 새로 작성
  sample_copy.writeAsString(nameModified);
}

void main() {
  final sam = File('lib/23_12_13/sample.txt');
  employeeMembers('sample.txt', 'sample_copy.txt');
}
