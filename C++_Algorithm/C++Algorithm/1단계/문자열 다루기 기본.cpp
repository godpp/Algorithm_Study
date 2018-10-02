//
//  문자열 다루기 기본.cpp
//  C++Algorithm
//
//  Created by 갓거 on 2018. 10. 3..
//  Copyright © 2018년 갓거. All rights reserved.
//

#include <string>
#include <iostream>
#include <regex>

using namespace std;

bool solution(string s) {
    bool answer = true;
    regex number("^[0-9]*");
    if (s.length() == 4 || s.length() == 6) {
        answer = regex_match(s, number);
    } else {
        answer = false;
    }
    return answer;
}

int main(){
    cout << solution("sss") << endl;
}
