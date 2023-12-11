// 파일을 복사하는 함수를 작성하시오
// 원본 파일 경로와 복사할 파일 경로는 프로그램 실행시 파라미터로 전달되는 것으로 하고
// 버퍼링이나 에러처리는 하지 않는다
import 'dart:io';

void main() {
  void copy(String source, String target) {
    final originalFile = File(source);
    final copyFile = File(target);

    // 파일 읽기
    // print(file.readAsStringSync());

    // 파일 쓰기
    // String copyFile = '조던 링';
    // file.writeAsStringSync(copyFile);

    //파일 복사
    copyFile.writeAsStringSync(originalFile.readAsStringSync());
  }

}
