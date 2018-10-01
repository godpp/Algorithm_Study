////
////  소수 찾기.cpp
////  C++Algorithm
////
////  Created by 갓거 on 2018. 9. 29..
////  Copyright © 2018년 갓거. All rights reserved.
////
//
//#include <iostream>
//
//using namespace std;
//
//int solution(int n) {
//    int answer = 0;
//    int* array = new int[n+1];
//    int i, j;
//    
//    for(i=2; i<=n; i++)
//        array[i] = i;
//    
//    for(i=2; i<=n; i++){
//        for(j=i+i; j<=n; j+=i)
//            array[j] = 0;
//    }
//    
//    for(i=2; i<=n; i++)
//        if (array[i] != 0)
//            answer++;
//    
//    return answer;
//}
//
//int main(){
//    cout << solution(5) << endl;
//}
