/*
 * Project name   :
 * File name      : hydro_dams.c
 * Created date   : Fri 05 May 2017
 * Author         : Huy Hung Ho
 * Last modified  : Fri 05 May 2017
 * Desc           :
 */

#include <stdio.h>
#include <stdlib.h>

struct Block {
    int number;
    int *height;
};

int find_top(int first, int tail, int *height) {
    int result = first;

    if (first == tail)
        return result;

    int i;
    for (i = first + 1; i <= tail; i++) {
        if (height[result] < height[i])
            result = i;
    }
    return result;
}

int erase_left(int first, int tail, int *height) {
    if (first >= tail)
        return 0;

    int result  = 0;
    int top     = find_top(first, tail - 1, height);

    result += (tail - first) * (height[tail] - height[top]);
    result += erase_left(first, top, height);
    //printf(" (%d, %d) = %d \n", first, tail, result);

    return result;
}


int erase_right(int first, int tail, int *height) {
    if (first >= tail)
        return 0;

    int result  = 0;
    int top     = find_top(first  + 1, tail, height);

    result += (tail - first) * (height[first] - height[top]);
    result += erase_right(top, tail, height);

    return result;
}
int cal_space(int number, int *height) {
    int result = 0;
    int top, top_left, top_right;
    top = find_top(0, number - 1, height);

    result = height[top] * number;
    int i;
    for (i = 0; i < number; i++) {
        result = result - height[i];
    }
    //printf("result= %d \n", result);

    result = result - erase_left(0, top, height);
    result = result - erase_right(top, number - 1, height);

    return result;
}

int main ()
{
    int N;
    scanf("%d", &N);
    struct Block block[N];

    int i, j;
    for (i = 0; i < N; i++) {
        scanf("%d", &block[i].number);
        block[i].height = malloc(block[i].number * sizeof(int));
        for (j = 0; j < block[i].number; j++)
            scanf("%d", &block[i].height[j]);
    }


    for (i = 0; i < N; i++) {
        printf("%d ", cal_space(block[i].number, block[i].height));
        printf("\n");
    }

	return 0;
}

