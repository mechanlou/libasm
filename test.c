#include <stdio.h>
#include <string.h>

extern int ft_strcmp(char *, char *);

int main(void)
{
	dprintf(1, "mine :%d\n", ft_strcmp("testpd", "tesl"));
	dprintf(1, "not  :%d\n", strcmp("testpd", "tesl"));
	return (0);
}