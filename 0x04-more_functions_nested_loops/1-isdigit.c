#include "main.h"
#include <ctype.h>

/**
 * _isdigit - input
 *
 * @c: character
 * Return: 1 yes 0 no
 */

int _isdigit(int c)
{
	if (c >= 48 && c <= 57)
	{
		return (1);
	}

	return (0);
}
