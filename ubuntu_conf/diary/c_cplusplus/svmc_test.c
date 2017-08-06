/*
 * Project name   :
 * File name      : svmc_test.c
 * Created date   : Sun 07 May 2017
 * Author         : Huy Hung Ho
 * Last modified  : Sun 07 May 2017
 * Desc           : Tetris game algorithm simulation
 */

#include <stdio.h>

const int N = 10;
int A[10][10], answer[10];

void moving_block(int i, int j) {
    int old_row = i;

    if (j < N - 1 && A[i][j + 1] == 1) {
        while (i < N - 1 && A[i + 1][j] == 0 && A[i + 1][j + 1] == 0)
            i++;
        if (i != old_row) {
            A[old_row][j]     = 0;
            A[old_row][j + 1] = 0;
            A[i][j]     = 1;
            A[i][j + 1] = 1;
        }
    }

    i = old_row;
    if (i > 0 && A[i - 1][j] == 1) {
        while (i < N - 1 && A[i + 1][j] == 0)
            i++;
        if (i != old_row) {
            A[old_row - 1][j] = 0;
            A[old_row][j]     = 0;
            A[i - 1][j] = 1;
            A[i][j]     = 1;
        }
    }
}

int main ()
{
    int test_case;
    for (test_case = 0; test_case < 1; test_case++) {
        int i, j;
        for (i = 0; i < N; i++)
        for (j = 0; j < N; j++)
            scanf("%d", &A[i][j]);
        printf("\n");

        for (i = N - 2; i >= 0; i--)
        for (j = 0; j < N; j++)
            if (A[i][j] == 1) {
                moving_block(i, j);
            }

        for (j = 0; j < N; j++) {
            answer[j] = 0;
            for (i = 0; i < N; i++)
                if (A[i][j] == 1) {
                    answer[j] = N - i;
                    break;
                }
        }

        printf("#%d", test_case + 1);
        for (i = 0; i < N; i++)
            printf(" %d", answer[i]);
        printf("\n");

        for (i = 0; i < N; i++) {
            for (j = 0; j < N; j++)
                printf("%d ", A[i][j]);
            printf("\n");
        }
    }
	return 0;
}

