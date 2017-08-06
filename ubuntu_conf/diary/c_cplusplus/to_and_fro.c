/*
 * Project name   :
 * File name      : to_and_fro.c
 * Created date   : Wed 03 May 2017
 * Author         : Huy Hung Ho
 * Last modified  : Wed 03 May 2017
 * Desc           :
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

void encoder(char *buffer, int columns);

int main ()
{
    char array[200][1000];
    int columns[200];
    int i, N;
    for (i = 0; i < 200; i++) {
        scanf("%d", &columns[i]);
        if (columns[i] == 0)
            break;
        scanf("%s", array[i]);
    }
    N = i;
    for (i = 0; i < N; i++) {
        encoder(array[i], columns[i]);
    }
    return 0;
}

void encoder(char *buffer, int columns) {
    int     length = strlen(buffer);

    int     rows    = length / columns + (length % columns != 0);
    char    array[columns * rows];

    int i, j;
    for (i = 0; i < length; i += columns) {
        for (j = 0; j < columns; j++) {
            array[i + j] = buffer[i + j];
        }
        i += columns;
        for (j = 0; j < columns; j++) {
            array[i + j] = buffer[i + columns - j - 1];
        }
    }

    for (i = 0; i < length; i++)
        printf("%c", array[i % rows * columns + i / rows]);
    printf("\n");
}
