#include<iostream>
using namespace std;

int main()
{
    int num = 10;
    int * numptr;
    numptr = &num;
    int & numref = num;

    cout << "num = " << num << endl;
    cout << "numptr = " << numptr << endl;
    cout << "numref = " << numref << endl;
    return 0;
}
