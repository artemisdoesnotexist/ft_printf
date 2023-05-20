# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: avan-der <avan-der@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2022/12/01 09:09:04 by avan-der      #+#    #+#                  #
#    Updated: 2023/05/20 13:07:20 by avan-der      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

# CONFIG
NAME		= 	libftprintf.a
CC			= 	gcc
CFLAGS		=	 -Wall -Wextra -Werror
RM 			= 	rm -rf
AR			=	ar rcs

# DIRECTORIES
SRC_DIR		= 	src
OBJ_DIR		= 	obj
INC_DIR		= 	include

# LIBRARIES
LIBFT_DIR	=	libft
LIBFT		=	$(LIBFT_DIR)/libft.a

INC			=	-I $(INC_DIR) \
				-I $(LIBFT_DIR)/include

# SOURCES
SRC			=	ft_printf.c \
				ft_printf_utils.c \
				ft_print_base_num.c \
				ft_print_ptr.c 

# OBJECTS
OBJ 		=	$(SRC:%.c=$(OBJ_DIR)/%.o)

# COLORS
DEF_COLOR = \033[0;39m
GRAY = \033[0;90m
RED = \033[0;91m
GREEN = \033[0;92m
YELLOW = \033[0;93m
BLUE = \033[0;94m
MAGENTA = \033[0;95m
CYAN = \033[0;96m
WHITE = \033[0;97m

###

all: lib $(NAME)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@echo "$(GREEN)Done!$(DEF_COLOR)"

$(OBJ): $(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(@D)
	@echo "$(BLUE)Compiling$(DEF_COLOR) $(CYAN)$<$(DEF_COLOR)"
	@$(CC) $(CFLAGS) $(INC) -c $< -o $@

lib :
	@echo "$(BLUE)Compiling $(DEF_COLOR)$(MAGENTA)libft$(DEF_COLOR)"
	@make -sC $(LIBFT_DIR)
	@cp $(LIBFT) $(NAME)

clean:
	@echo "$(BLUE)Cleaning object files...$(DEF_COLOR)"
	@$(RM) $(OBJ_DIR)
	@make clean -sC $(LIBFT_DIR)

fclean: clean
	@echo "$(BLUE)Cleaning executables...$(DEF_COLOR)"
	@$(RM) $(LIBFT)
	@$(RM) $(NAME)

re: fclean all
	
.PHONY: all clean fclean re