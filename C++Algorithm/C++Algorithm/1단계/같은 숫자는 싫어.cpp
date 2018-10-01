//
//  같은 숫자는 싫어.cpp
//  C++Algorithm
//
//  Created by 갓거 on 2018. 10. 1..
//  Copyright © 2018년 갓거. All rights reserved.
//

#include <vector>
#include <iostream>
#include <algorithm>

using namespace std;

vector<int> solution(vector<int> arr)
{
    arr.erase(unique(arr.begin(), arr.end()), arr.end());
    return arr;
}

int main(){
    vector<int> arr;
    arr.push_back(1);
    arr.push_back(1);
    arr.push_back(3);
    arr.push_back(3);
    arr.push_back(0);
    arr.push_back(1);
    arr.push_back(1);
    solution(arr);
}

vector<int> solution1(vector<int> arr)
{
    vector<int>::size_type i, j;
    
    for(i=0; i<arr.size(); i++){
        for(j=i+1; j<arr.size();){
            if(arr[i]==arr[j]){
                arr.erase(arr.begin()+j);
            } else {
                j++;
                break;
            }
        }
    }
    return arr;
}
