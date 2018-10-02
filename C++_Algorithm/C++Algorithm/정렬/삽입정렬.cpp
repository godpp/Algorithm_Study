////
////  삽입정렬.cpp
////  C++Algorithm
////
////  Created by 갓거 on 2018. 10. 2..
////  Copyright © 2018년 갓거. All rights reserved.
////
//
//#include <vector>
//#include <iostream>
//
//using namespace std;
//
//vector<int> insertionSort(vector<int> arr){
//    int i,j;
//
//    for (i=1; i<arr.size(); i++) {
//        int temp = arr[i];
//        j = i-1;
//        while (j>=0 && temp < arr[j]) {
//            swap(arr[j], arr[j+1]);
//            j--;
//        }
//        arr[j+1] = temp;
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
//    insertionSort(arr);
//}
