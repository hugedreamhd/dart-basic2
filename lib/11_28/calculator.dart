void main(){
  Calculator calculator = Calculator();
  int result = calculator.add(4, 5);
  int result1 = calculator.subtract(10, 2);
  int result2 = calculator.multiply(5, 9);
  double result3 = calculator.divide(8, 2);

  print(result);
  print(result1);
  print(result2);
  print(result3);
}

class Calculator{
  //덧셈 함수
  int add(int a, int b){
    return a + b;
  }
  //뺄셈 함수
  int subtract(int a, int b){
    return a - b;
  }
  //곱셈 함수
  int multiply(int a, int b){
    return a * b;
  }
  //나눗셈 함수
  double divide(int a, int b){
    return a / b;
  }

}