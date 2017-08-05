/*
 * Project name   :
 * File name      : quick_sort.c
 * Created date   : Sat 06 May 2017
 * Author         : Huy Hung Ho
 * Last modified  : Sat 06 May 2017
 * Desc           :
 */

#include <stdio.h>
#include <stdlib.h>

void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

void quick_sort(int *a, int left, int right) {
    printf("left = %d, right = %d \n", left, right);
    int i = left;
    int j = right;
    int pivot   = a[(left + right) / 2];

    do {
        while (a[i] < pivot && i < right)
            i++;
        while (a[j] > pivot && j > left)
            j--;

        if (i <= j) {
            swap(&a[i], &a[j]);
            i++;
            j--;
        }
    } while (i <= j);

    if (left < j)
        quick_sort(a, left, j);
    if (i < right)
        quick_sort(a, i, right);
}

void print(int N, int *a) {
    int i;
    for (i = 0; i < N; i++)
        printf("%d ", a[i]);
    printf("\n");
}

int main ()
{
    int N;
    scanf("%d", &N);

    int *array = malloc(N * sizeof(int));
    int i;
    for (i = 0; i < N; i++)
        scanf("%d", &array[i]);

    quick_sort(array, 0, N - 1);
    print(N, array);
	return 0;
}

