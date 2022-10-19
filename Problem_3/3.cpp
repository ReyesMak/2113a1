#include <iostream>
using namespace std;

int main(){
    int num;
    cin >> num ;
    cout << 2 << endl;
    for (int element = 2; element < num + 1 ; ++element) {
        for (int i = 2; i < element ; ++i){
            if (element%i == 0 && element != i) {
                break;
            }
            if (i == element -1 ){
        cout << element << endl;
            }
        }
        }
    return 0;
    }