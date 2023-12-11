//총무부 리더 ‘홍길동(41세)’의 인스턴스를 생성하고 직렬화하여
// //company.txt 파일에 쓰는 프로그램을 작성하시오.
// //직렬화를 위해 위의 2개 클래스를 일부 수정해도 됩니다.

import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(
    this.name,
    this.age,
  );

  Employee.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
      };
}

class Department {
  String name;
  Employee leader;

  Department(
    this.name,
    this.leader,
  );
}

void main() {
  String addEmployee = '{"name": "홍길동", "age": "41"}';
  Map<String, dynamic> json = jsonDecode(addEmployee);

  Employee employee = Employee('홍길동', 41);
  Department department = Department('총무부', employee);

  //employee 객체를 직렬화하여 저장
  Map<String, dynamic> departmentMap = {
    'name': department.name,
    'leader': employee.toJson(),
  };

  //직렬화 파일에 쓰기
  final file = File('lib/23_12_11/company.txt');
  String jsonString = jsonEncode(departmentMap);
  file.writeAsStringSync(jsonString);
}
