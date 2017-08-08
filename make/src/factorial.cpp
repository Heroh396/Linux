/*
 * Project name   :
 * File name      : factorial.cpp
 * Created date   : Sun 06 Aug 2017 11:34:09 PM ICT
 * Author         : Huy-Hung Ho
 * Last modified  : Sun 06 Aug 2017 11:34:09 PM ICT
 * Desc           :
 */

#include "functions.h"

int factorial(int n) {
    if( n!= 1) {
        return(n * factorial(n-1));
    }
    else
        return 1;
}
