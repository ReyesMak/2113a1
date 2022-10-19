#include <iostream>
using namespace std;

char CeasarShift(char c, int k){
    if (c >= 65 && c <= 90 ){
        c += k % 26;
        int ch = (c + 26 - 65 ) % 26 + 65 + 32;
        return char (ch);
        }
    else if (c>= 97 && c<= 122 ){
        c += k % 26; 
        int ch = (c - 97 +26 )% 26+ 97 - 32;
        return char (ch) ;
    }
    else{
        return c;
    };
};

int main(){
    char mode , letter, ans;
    int k, delta;
    cin >> mode >> delta >> letter;
    if (mode == 'e'){
        k = delta;
    } 
    else{
        k = -delta;
    };
    while (letter != '!'){
        ans = CeasarShift (letter, k );
        cout << ans ;
        cin >> letter;
    };
    if (letter == '!'){
        cout << '!';
    }
    return 0;
    }