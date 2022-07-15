#include <iostream>

using namespace std;

int main()
{
    int operandCode = 0;
    cout << "enter a code for an operator: " << endl;
    cout << "     1   2   3   4    5     6 \n";
    cout << "    (+) (x) (�) (-) (avg) (pow) \n";
    cout << " [i-int]: ";
    cin >> operandCode;
    
    int length = 0;
    cout << "enter length of number: ";
    cin >> length;

    float* arr = new float[length];
    for (int i=0; i<length; i++)
        cin >> arr[i];
    
    float r = 0.0;
    switch (operandCode) {
        case 1:
            for (int i = 0; i < length; i++)
                r += arr[i];
            break;

        case 2:
            for (int i = 0; i < length; i++)
                r *= arr[i];
            break;

        case 3:
            for (int i = 0; i < length; i++)
                r /= arr[i];
            break;

        case 4:
            for (int i = 0; i < length; i++)
                r -= arr[i];
            break;

        case 5:
            for (int i = 0; i < length; i++)
                r += arr[i];
            r /= length;
            break;

        default:
            cout << "Please Enter an valid Operation_Code";
            break;
    }

    cout << r;

    
}
