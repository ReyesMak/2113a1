#include <iostream>
using namespace std;

char CeasarShift(char c, int k){
    // 65 is the ASCII value of 'a' and 95 is the ASCII value of 'z'
    // if c is a lower-case character
    if (c >= 65 && c <= 90){
        //add positions k to c
        //Modulo Operator is used as there is only 26 alphabets
        c += k % 26;
        // (c - 65 + 26) % 26 + 65 ensures c is always within the lower case alphabetical range after shifting
        // +32 allos int ch to be within uppercase alphabetical range
        int ch = (c - 65 + 26) % 26 + 65 + 32;
        // return ch as character
        return char (ch) ;
        }
    // 97 is the ASCII value of 'A' and 122 is the ASCII value of 'Z'
    // if c is a upper-case character
    else if (c>= 97 && c<= 122){
        //add positions k to c
        //Modulo Operator is used as there is only 26 alphabets
        c += k % 26;
         // (c - 97 + 26) % 26 + 65 ensures c is always within the upper case alphabetical range after shifting
        // -32 allos int ch to be within lower-case alphabetical range
        int ch = (c - 97 +26)% 26 + 97 - 32;
        // return ch as character
        return char (ch) ;
    }
    else{
        // return char c if it is not an alphabet 
        return c;
    };
}

int main(){
    char mode, letter, ans;
    int k, delta;
    // The first input argument is mode, which allows users to choose either decryption or encryption
    // The second input arugument is delta, which dictates the number of position shifts
    // The third input argument is letter, which is the character for Ceasar Shifting
    cin >> mode >> delta >> letter;
    // if mode is equal to 'e', k is positive under encryption
    if (mode == 'e'){
        k = delta;
    } 
    else{
        // k is negative under decryption
        k = -delta;
    };
    while (letter != '!'){
        // letter and k for CeasarShift
        ans = CeasarShift (letter, k);
        cout << ans ;
        // Keep accepting input arguments if the previous input is not '!'
        cin >> letter;
    };
    if (letter == '!'){
        // Output '!' if the previous input is '!'
        cout << '!' << endl;
    }
    return 0;
    }