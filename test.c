#include <stdio.h>
#include <string.h>
#include "main.h"


int main(void)
{
	dprintf(1, "%zd\n", ft_write(133, "test\n", 5));
	perror(NULL);
	return (0);
}