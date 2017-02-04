/*
 * Project name	:
 * File name	:
 * Created date	:
 * Author	:
 * Last modified:
 * Desc		:
 */

/*
 * brief	:
 * detail	:
 * param	:
 * return	:
 */

/* -------- Example ----------- */

/*
 * brief	: Returns the sum of a and b
 * param	: a
 * param	: b
 * param	: retArray If set to true, the function will return an array
 * return	: Sum of a and b or an array that contais a, b and sum a and b
 */
function sum(a, b, retArr) {
	if (retArr) {
		return [a, b, a + b];
	}
	return a + b;
}
