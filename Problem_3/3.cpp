#include <iostream>
using namespace std;

int main(){
    int num;
    // Input an integer num
    cin >> num ;
    // 2 is a prime number yet an exceptional case in the code below
    // Thus 2 is printed
    cout << 2 << endl;
    // Looping through every integer called element from 2 to num
    for (int element = 2; element <= num ; element++) {
        // Looping through every integer called i from 2 to (element - 1)
        for (int i = 2; i < element ; i++){
            // Break the for-loop if both element is dividible by the certain integer i
            if (element%i == 0) {
                break;
            }
            // Print int element if it is not divisible by any i ranging from 2 to (element - 1)
            if (i == element - 1 ){
        cout << element << endl;
            }
        }
        }
    return 0;
    }