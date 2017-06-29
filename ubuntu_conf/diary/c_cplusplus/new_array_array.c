/*
 * Project name   :
 * File name      : new_array_array.cpp
 * Created date   : Wed 03 May 2017
 * Author         : Huy Hung Ho
 * Last modified  : Wed 03 May 2017
 * Desc           :
 */
#define m 5
#define n 4
#include <iostream>
using namespace std;

int main ()
{
    int **a;
    a = new int*[m];
    for (int i = 0; i < m; i++)
        a[i] = new int[n];
    for (int i = 0; i < m; i++)
    for (int j = 0; j < n; j++) {
        cout << "A[" << i << "][" << j << "] = ";
        cin >> a[i][j];
    }
	return 0;
}

