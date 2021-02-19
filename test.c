#include <stdio.h>
#include <string.h>
#include "main.h"


int main(void)
{
	char *str;
	char truc[] = "fgdsgrdz";
	dprintf(1, "%zu\n", ft_strlen(truc));
	str = ft_strdup(truc);
	dprintf(1 ,"%s\n", str); 
	// str = malloc(sizeof(char) * (ft_strlen("pute") + 1));
	// ft_strcpy(str, "pute");
	perror(NULL);
	return (0);
}