#include <stdio.h>

extern unsigned int ft_strlen(const char *str);

int main(void)
{
	dprintf(1, "%d\n", ft_strlen("testpd"));
	return (0);
}