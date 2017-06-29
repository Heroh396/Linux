/*
 * Project name   :
 * File name      : prime_generator.cpp
 * Created date   : Wed 03 May 2017
 * Author         : Huy Hung Ho
 * Last modified  : Wed 03 May 2017
 * Desc           :
 */

#include <stdio.h>
#include <assert.h>
#include <math.h>

int is_prime(int N)
{
    int i, result;
    result = 1;

    if (N == 1)
        return 0;

    for (i = 2; i <= (int)sqrt(N); i++) {
        if (N % i == 0) {
            result = 0;
            break;
        }
    }
    return result;
}

void print_prime_number(int N, int M)
{
    int i;
    if (N % 2 == 1)
        i = N;
    else
        i = N + 1;

    for (; i <= M; i++) {
        if (is_prime(i) == 1)
            printf("%d\n", i);
    }
    printf("\n");
}

int main ()
{
    int i, N;
    scanf("%d", &N);
    assert(N <= 10);
    int array[2 * N];

    for (i = 0; i < N; i++) {
        scanf("%d %d", &array[ 2 * i * 1], &array[2 * i + 1]);
        assert(array[2 * i] > 0 && array[2 * i + 1] <= 1000000000 && array[2 * i] <= array[2 * i + 1]);
    }
    printf("\n");

    for (i = 0; i < N; i++)
        print_prime_number(array[2 * i], array[2 * i + 1]);

	return 0;
}

