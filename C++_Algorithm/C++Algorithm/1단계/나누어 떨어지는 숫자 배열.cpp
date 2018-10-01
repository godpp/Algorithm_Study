////
////  나누어 떨어지는 숫자 배열.cpp
////  C++Algorithm
////
////  Created by 갓거 on 2018. 10. 2..
////  Copyright © 2018년 갓거. All rights reserved.
////
//
//#include <string>
//#include <vector>
//#include <algorithm>
//using namespace std;
//
//vector<int> solution(vector<int> arr, int divisor) {
//    vector<int> answer;
//    vector<int>::iterator iter;
//    
//    for(iter = arr.begin(); iter != arr.end(); iter++){
//        if(*iter%divisor == 0){
//            answer.push_back(*iter);
//        }
//    }
//    
//    if(answer.size() == 0){
//        answer.push_back(-1);
//    } else {
//        sort(answer.begin(), answer.end());
//    }
//    
//    return answer;
//}
//
//int main(){
//    vector<int> arr;
//    arr.push_back(5);
//    arr.push_back(9);
//    arr.push_back(7);
//    arr.push_back(10);
//    
//    solution(arr, 5);
//}
