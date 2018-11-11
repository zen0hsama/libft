/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ezonda <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/10 19:18:20 by ezonda            #+#    #+#             */
/*   Updated: 2018/11/11 03:49:37 by ezonda           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdio.h>

char	*ft_strchr(const char *s, int c)
{
	int i;

	i = 0;
	while (1)
	{
		if (s[i] == c)
			return ((char *)&s[i]);
		else if (s[i++] == '\0')
			return (NULL);
	}
}

int		main(int ac, char **av)
{
	(void)ac;
	printf("%s\n", ft_strchr(av[1], 101));
	printf("%s", strchr(av[1], 101));
	return (0);
}
