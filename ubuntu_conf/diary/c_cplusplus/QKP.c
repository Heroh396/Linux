/*
 * Project name   : Human detection by HOG
 * File name      : QKP.c
 * Created date   : Tue 16 May 2017
 * Author         : Huy Hung Ho
 * Last modified  : Tue 16 May 2017
 * Desc           :
 */

#include <stdio.h>

int main ()
{
    int M, N, i, j;
    int array[1000][1000];
    int k1, A[1000];
    int k2, B[1000];
    int k3, C[1000];

    while (1) {
        scanf("%d %d", &M, &N);
        if (M == 0 && N == 0)
            break;
        scanf("%d", &k1);
        for (i = 1; i <= 2 * k1; i++)
            scanf("%d", &A[i++]);
        scanf("%d", &k2);
        for (i = 1; i <= 2 * k2; i++)
            scanf("%d", &B[i++]);
        scanf("%d", &k3);
        for (i = 1; i <= 2 * k3; i++)
            scanf("%d", &C[i++]);
        for (i = 1; i <= k1; i++) {
            array[A[i]][A[i + 1]] = 1;
            array[A[i] + 1][A[i+1] + 2] = 1;
        }
    }
	return 0;
}

