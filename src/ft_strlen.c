/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_strlen.c                                        :+:    :+:            */
/*                                                     +:+                    */
/*   By: avan-der <marvin@codam.nl>                   +#+                     */
/*                                                   +#+                      */
/*   Created: 2022/10/11 14:05:09 by avan-der      #+#    #+#                 */
/*   Updated: 2023/03/03 16:28:25 by avan-der      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "../include/ft_printf.h"

size_t	ft_strlen(const char *s)
{
	int				len;

	len = 0;
	while (*(s + len))
	{
		len++;
	}
	return (len);
}

/*
DESCRIPTION
Computes the length of a string, not including the terminatin null character

RETURN VALUES
Returns the length of a string
*/