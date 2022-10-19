#include <iostream>
using namespace std;

char CeasarShift(char c, int k){
    if (c >= 'a' && c <= 'z'){
        char ch = toupper(c);
        ch = ((ch - 'A') + k) % 26 + 'A';
        }
    else if (c>='A' && c<='Z'){
        char ch = tolower(c);
        ch = ((ch - 'a') + k) % 26 + 'a';
    }
    else{
        return c;
    };
}
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