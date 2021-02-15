#include "main.h"

void	balec(void	*viteeff)
{
	if (viteeff)
		free (viteeff);
}

int		balec2(char *s1, char *s2)
{
	return(0);
}

int		main(void)
{
	char	str1[] = "test";
	char	str2[] = "prank";
	char	str3[] = "grshrdhdfG8ANSfesgr\\hrdz";
	char	*str4;

	dprintf(1, "ft_strlen\n");
	dprintf(1, "str2 : %s has length = %zu\n", str2, ft_strlen(str2));
	dprintf(1, "str3 : %s has length = %zu\n", str3, ft_strlen(str3));
	dprintf(1, "strlen\n");
	dprintf(1, "str2 : %s has length = %zu\n", str2, strlen(str2));
	dprintf(1, "str3 : %s has length = %zu\n", str3, strlen(str3));
	write(1, "\n", 1);
	dprintf(1, "ft_strcmp |%s| & |%s|: %d\n", str1, str2, ft_strcmp(str1, str2));
	dprintf(1, "strcmp |%s| & |%s|: %d\n", str1, str2, strcmp(str1, str2));
	write(1, "\n", 1);
	ft_write(1, str1, strlen(str1));
	write(1, str1, strlen(str1));
	write(1, "\n", 1);
	str4 = strdup(str3);
	dprintf(1, "ft_strcpy str1 dans str3 : %s\n", ft_strcpy(str4, str1));
	str4 = strdup(str3);
	dprintf(1, "strcpy str1 dans str3: %s\n",strcpy(str4, str1));
	str4 = strdup(str1);
	dprintf(1, "ft_strcpy str3 dans str1 : %s\n",ft_strcpy(str4, str3));
	str4 = strdup(str1);
	dprintf(1, "strcpy str3 dans str1: %s\n", strcpy(str4, str3));
	
	return (0);
}