# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: avan-der <avan-der@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2022/12/01 09:09:04 by avan-der      #+#    #+#                  #
#    Updated: 2023/03/03 16:31:39 by avan-der      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME		= 	libftprintf.a

SRC_DIR		= 	src

OBJ_DIR		= 	obj

INC_DIR		= 	include

SRC			=	ft_printf.c \
				ft_printf_utils.c \
				ft_print_base_num.c \
				ft_print_ptr.c \
				ft_calloc.c \
				ft_itoa.c \
				ft_memset.c \
				ft_putchar_fd.c \
				ft_strlen.c

OBJ 		=	$(SRC:%.c=$(OBJ_DIR)/%.o)

CC			= 	gcc

CFLAGS		=	 -Wall -Wextra -Werror

RM 			= 	rm -f

all: $(NAME)

$(NAME): $(OBJ) $(LIBFT)
	@echo "Linking $@"
	@ar rc $(NAME) $(OBJ)
	@echo "Done!"

$(OBJ): $(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(@D)
	@echo "Compiling $<"
	@$(CC) $(CFLAGS) -I $(INC_DIR) -c $< -o $@

clean:
	$(RM) -r $(OBJ_DIR)

fclean: clean
	$(RM) $(NAME)

re: fclean all
	
.PHONY: all clean fclean re