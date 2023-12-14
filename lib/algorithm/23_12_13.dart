//문자열 배열 strlist가 매개변수로 주어집니다.
//strlist 각 원소의 길이를 담은 배열을 retrun하도록 solution 함수를 완성해주세요.

void main(){
  //List<String> result = solution("we", "are","the", "world");
  List<int> result = solution (["we", "are","the", "world"]);
  print(result);
}

List<int> solution(List<String>strlist) {
  List<int> wonsoResult = [];

  for(int i = 0; i < strlist.length; i++){
    if(strlist.length <= 100){
      wonsoResult.add(strlist[i].length);
      //print(wonsoResult);
    }
  }
  return wonsoResult;
}