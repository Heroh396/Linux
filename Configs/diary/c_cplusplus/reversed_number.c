/*
 * Project name   :
 * File name      : reversed_number.cpp
 * Created date   : Wed 03 May 2017
 * Author         : Huy Hung Ho
 * Last modified  : Wed 03 May 2017
 * Desc           :
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int reversed_number(char *t, int n)
{
    int result, i;
    sprintf(t, "%d", n);

    int length = strlen(t);
    char *t2 = (char*)malloc((length + 1) * sizeof(char));

    for (i = 0; i < length; i++)
        t2[(length - 1 - i)] = t[i];
    t2[length] = '\0';

    return atoi(t2);
}

int addrev(char *t, int a, int b) {
    int x = reversed_number(t, a);
    int y = reversed_number(t, b);
    return reversed_number(t, x + y);
}

int reversed_number_v2(int n) {
    int result = 0;
    char balance;
    while (n != 0) {
        balance = n % 10;
        result = (result + balance) * 10;
        n = n / 10;
    }
    return result / 10;
}

int addrev_v2(int a, int b) {
    int x = reversed_number_v2(a);
    int y = reversed_number_v2(b);
    return reversed_number_v2(x + y);
}

int main ()
{
    int N;
    scanf("%d", &N);

    int a[N], b[N];
    int i;
    for (i = 0; i < N; i++)
        scanf("%d %d", &a[i], &b[i]);

    //char t[20];
    for (i = 0; i < N; i++)
        printf("%d\n", addrev(a[i], b[i]));

	return 0;
}

