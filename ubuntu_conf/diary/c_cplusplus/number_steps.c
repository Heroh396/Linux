/*
 * Project name   : Human detection by HOG
 * File name      : number_steps.c
 * Created date   : Tue 16 May 2017
 * Author         : Huy Hung Ho
 * Last modified  : Tue 16 May 2017
 * Desc           :
 */

#include <stdio.h>

int main ()
{
    int test_case;
    scanf("%d", &test_case);

    int i;
    for(i = 0; i < test_case; i++) {
        int x, y;
        int result;
        scanf("%d %d", &x, &y);
        if (x - y != 0 && x - y != 2)
            printf("No Number \n");
        else {
            if (x % 2 == 0)
                result = x + y;
            else
                result = x + y - 1;
            printf("%d \n", result);
        }
    }

	return 0;
}

