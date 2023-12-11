void main(){
  final s1 = 'Dart';
  final s2 = 'dart';

  print(s1 == s2);
  print(s1.hashCode);
  print(s2.hashCode);

  print(s1.toLowerCase() == s2.toLowerCase());
  print(s1.hashCode);
  print(s2.hashCode);
}


문자열 처리(길이)

final s1 = 'Dart';

print(s1.length); //4
print(s1.isEmpty); //false

length : 길이를 검색
isEmpty : 길이가 0인지 bool 타입으로 반환

문자열 처리 (검색)

final s1 = 'Dart and Flutter';

print(s1.contains('Flutter')); //true
print(s1.endsWith('Flutter')); //true
print(s1.indexOf('Dart')); / 0
print(s1.lastIndexOf('t')); //13

contains() : 포함을 하고 있는지 확인
endsWith() : 끝나는 단어가 맞는지 확인
indexOf() : 단어가 몇 번째에 있는지 확인(띄어쓰기를 포함하나?)
lastIndexOf() : 뒤에서 몇 번째에 단어가 위치 하고 있는지 확인


문자열 처리 (변환)

final s1 = 'Dart and Flutter';

print(s1.toLowerCase());
print(s1.toUpperCase());
print(s1.trim());
print(s1.replaceAll('and', 'or'));

toLowerCase() : 모두 소문자로 변경한다
toUpperCase() : 모두 대문자로 변경한다
trim() : 좌우 공백을 제거 한다
replaceAll() : 앞 단어를 뒤 단어로 변경한다

문자열 결합 방법
1) + 연산자
2) String interpolation
3) StringBuffer

StringBuffer

write() 메서드로 결합한 결과를 내부 메모리(버퍼/Buffer)에 담아두고
toString()으로 결과를 얻는다

final buffer = StringBuffer('Dart');

buffer
  ..write('and');
  ..write('Flutter');

print(buffer.toString());

=>

..cascade(캐스케이드) 연산자 : void 리턴인 함수의 앞에 사용하면 해당 객체의 레퍼런스를
                            반환하여 메서드 체인(method chain)을 사용할 수 있음

+ 연산자가 느린 이유 => String 인스턴스는 불변 객체 (immutable)


코드 성능 측정

final stopwatch = Stopwatch()..start();

//시간 측정할 코드

print(stopwatch.elapsed);

두 코드의 속도 비교

var string = '';
for (int i = 0; i < 100000; i++) {
  string += i.toString();
}

var string = StringBuffer('');
for (int i = 0; i < 100000; i++) {
  string.write(i.toString());
}

다트 라이브러리 :
https://api.dart.dev/stable/3.0.2/dart-core/String-class.html

