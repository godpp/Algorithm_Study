//
//  완주하지 못한 선수.cpp
//  C++Algorithm
//
//  Created by ParkSungJoon on 19/11/2018.
//  Copyright © 2018 갓거. All rights reserved.
//

#include <string>
#include <vector>
#include <iostream>

using namespace std;

string solution(vector<string> participant, vector<string> completion) {
    string answer = "";
    vector<string>::iterator iterI;
    vector<string>::iterator iterJ;
    vector<string>::iterator temp;
    
    for(iterI = participant.begin(); iterI != participant.end();){
        int count = 0;
        for(iterJ = completion.begin(); iterJ != completion.end();){
            if (*iterI == *iterJ){
                temp = participant.erase(iterI);
                iterJ = completion.erase(iterJ);
                count++;
                break;
            } else {
                iterJ++;
            }
        }
        if (count != 0){
            iterI = temp;
        } else{
            iterI++;
        }
    }
    answer = participant[0];
    
    return answer;
}

int main(){
    vector<string> participant;
    vector<string> completion;
    
    participant.push_back("marina");
    participant.push_back("josipa");
    participant.push_back("nikola");
    participant.push_back("vinko");
    participant.push_back("filipa");
    
    completion.push_back("josipa");
    completion.push_back("filipa");
    completion.push_back("marina");
    completion.push_back("nikola");

    solution(participant, completion);
}
