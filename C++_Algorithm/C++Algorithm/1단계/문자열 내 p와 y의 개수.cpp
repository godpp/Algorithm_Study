////
////  문자열 내 p와 y의 개수.cpp
////  C++Algorithm
////
////  Created by 갓거 on 2018. 10. 3..
////  Copyright © 2018년 갓거. All rights reserved.
////
//
//#include <string>
//#include <iostream>
//
//using namespace std;
//
//bool solution(string s)
//{
//    bool answer = true;
//    int i;
//    int countP = 0, countY = 0;
//    for (i=0; i<s.length(); i++) {
//        s[i] = tolower(s[i]);
//        if (s[i] == 'p') {
//            countP++;
//        } else if (s[i] == 'y') {
//            countY++;
//        }
//    }
//    if (countP == countY || countP + countY == 0) {
//        answer = true;
//    } else {
//        answer = false;
//    }
//
//    return answer;
//}
//
//int main(){
//    cout << solution("pPoooyY") << endl;
//}
