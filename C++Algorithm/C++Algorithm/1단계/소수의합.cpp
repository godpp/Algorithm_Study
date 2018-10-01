////
////  소수의합.cpp
////  C++Algorithm
////
////  Created by 갓거 on 2018. 9. 27..
////  Copyright © 2018년 갓거. All rights reserved.
////
//
//#include <iostream>
//using namespace std;
//
////MARK: 에라토스테네스의 채
//long long solution(int N) {
//    if(N <= 1){
//        return 0;
//    }
//    long long answer = 0;
//    unsigned int* array = new unsigned int[N+1];
//    int i, j;
//    
//    for(i=2; i<=N; i++){
//        array[i] = i;
//    }
//    
//    for(i=2; i*i<=N; i++){
//        if(array[i] != 0){
//            for(j=i+i; j<=N; j+=i){
//                array[j] = 0;
//            }
//        }
//    }
//    for(i=2;i<=N;i++){
//        if (array[i] != 0)
//            answer += array[i];
//    }
//    return answer;
//}
//
//int main(){
//    cout << solution(7) << endl;
//}
