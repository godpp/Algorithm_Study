////
////  선택정렬.cpp
////  C++Algorithm
////
////  Created by 갓거 on 2018. 10. 2..
////  Copyright © 2018년 갓거. All rights reserved.
////
//
//#include <vector>
//#include <iostream>
//#include <algorithm>
//
//using namespace std;
//
//vector<int> selectionSort(vector<int> arr){
//    int i, j;
//
//    for (i=0; i<arr.size()-1; i++) {
//        int temp = i;
//        for (j=i+1; j<arr.size(); j++) {
//            if(arr[temp]>=arr[j]){
//                temp = j;
//            }
//        }
//        swap(arr[i], arr[temp]);
//    }
//    return arr;
//}
//
//int main(){
//    vector<int> arr;
//    arr.push_back(8);
//    arr.push_back(3);
//    arr.push_back(5);
//    arr.push_back(9);
//    arr.push_back(2);
//    arr.push_back(0);
//    arr.push_back(6);
//    arr.push_back(4);
//
//    selectionSort(arr);
//}
//
//
