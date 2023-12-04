##
## EPITECH PROJECT, 2023
## HUB-Workshop-CLion
## File description:
## My very own makefile
##

CFLAGS	+=	-Wall			# Enable some optionals warnings of GCC
CFLAGS	+=	-g3 			# Enable the debug flag
CFLAGS	+=	-I./include/ 	# Include our headers files

NAME	=	workshop_clion

SRC	=	./src/main.c

OBJ	=	$(SRC:%.c=%.o)

all:	$(NAME)

$(NAME):	$(OBJ)
	$(CC) $(OBJ) $(CFLAGS) -o $(NAME)

$(BUILD_DIR)/%.o:	%.c
	@ mkdir -p $(dir $@)
	$(CC) -o $@ -c $< $(CFLAGS)

clean:
	@ rm -f $(OBJ)

fclean:	clean
	@ rm -f $(NAME)

re:	fclean all

.PHONY : all clean fclean re
