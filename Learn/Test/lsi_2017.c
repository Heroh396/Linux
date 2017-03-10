/*******************************************************************************
// Project name   :
// File name      : lsi_2017.c
// Created date   : Fri 02 Dec 2016 04:44:17 PM ICT
// Author         : Ngoc-Sinh Nguyen, Huy-Hung Ho
// Last modified  : Fri 02 Dec 2016 06:14:17 PM ICT
// Desc           : Human detection by Histogram of Oriented Gradient
*******************************************************************************/

#include <stdio.h>
#include <unistd.h> //getopt
#include "rwpng.h"
#include "helper.h"
#include "human_detection.h"
#include <stdlib.h>

int main(int argc, char *argv[])
{

	unsigned char	*iF;
	unsigned char 	oF[100];
	struct raw_img 	img;

	int	c	= 0;
	while( (c = getopt(argc, argv, "i:")) != -1 )
		switch (c){
		case 'i':
			iF = optarg;
		default:
			break;
		}
	if(optind > argc){
		fprintf(stderr, "Expect argument after option\n");
		return 1;
	}

	/* Read file PNG */
	read_PNG(iF, &img);
	printf("Loaded PNG: %s \n", iF);

	/* Declare space store detected object */
        struct Object   *save_detects   = malloc(sizeof(struct Object) * MAX_DETECTS);
        uint8           *nDetects        = calloc(sizeof(uint8), 1);

	/* Main processing */
	Human_detection(&img, nDetects, save_detects);

	/* Draw around position */
	if (*nDetects != 0) {
		printf("There are %d human in this image. \n", *nDetects);
		Draw(&img, nDetects, save_detects);
	}
	else
		printf("There are NO human in this image. \n");

	/* Write file PNG */
	sprintf(&oF, "hog_%s", iF);
	write_PNG(oF, &img);
	printf("Saved PNG: %s \n", oF);

	return 0;
}
