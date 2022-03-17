#include "main.h"
#include <stdio.h>

/**
 * _isupper -  Entry
 * main - check the code.
 *
 * Return: Always 0.
 */

int _isupper(int c)/* the main*/
{
	if (c > 64 && c < 90)
	{
		return (1);
	} else
	{
		return (0);
	}
}
