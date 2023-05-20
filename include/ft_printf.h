/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_printf.h                                        :+:    :+:            */
/*                                                     +:+                    */
/*   By: avan-der <avan-der@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2022/12/01 21:06:16 by avan-der      #+#    #+#                 */
/*   Updated: 2023/05/20 12:17:34 by avan-der      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <unistd.h>
# include <stdarg.h>
# include <stdlib.h>

int		ft_printf(const char *format, ...);
int		handle_conversion(va_list args, const char *format, int i);
int		print_char(int c);
int		print_string(char *s);
int		print_ptr(unsigned long long ptr);
int		print_number(int n);
int		print_number_base(long long int n, const char *base);
int		print_unsigned_number_base(long long int n, const char *base);
int		print_hex(long long int n, int is_uc);
int		print_unsigned_number_b10(long long int n);
#endif