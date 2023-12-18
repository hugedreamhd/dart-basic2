// 최댓값 찾기 함수:
//
// 입력으로 숫자로 이루어진 리스트를 받아들이는 함수 findMax를 작성하세요.
// findMax 함수는 입력된 리스트에서 가장 큰 값을 찾아 반환해야 합니다.
// 예를 들어, findMax([2, 5, 1, 9, 3])는 9를 반환해야 합니다.

void main() {
  int resultMaxInt = findMax([1, 2, 3, 4, 5]);
  print(resultMaxInt);
}

int findMax(List<int> maxList) {
  int maxInt = 0;

  for (int i = 0; i < maxList.length; i++) {
    if (maxList[i] > maxInt) {
      maxInt = maxList[i];
    }
  }
  return maxInt;
}
