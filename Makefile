.SILENT:

DEF_COLOR = \033[0;39m
GREEN = \033[1;92m
WHITE = \033[1;97m

NAME = ircserv
CC = c++

CFLAGS = -Wall -Wextra -Werror -std=c++98

RM = rm -f

SRC =  

OBJ = $(SRC:.cpp=.o)

$(NAME): $(OBJ)
	$(CC) $(OBJ) $(CFLAGS) -o $(NAME)
	@echo "'${GREEN}all${DEF_COLOR}' for mandatory ${NAME} executed successfully!"

all: $(NAME)

clean:
	$(RM) $(OBJ)
	@echo "'${GREEN}clean${DEF_COLOR}' for ${NAME} executed successfully!"

fclean: clean
	$(RM) $(NAME)
	@echo "'${GREEN}fclean${DEF_COLOR}' for ${NAME} executed successfully!"

re: fclean
	make all
	@echo "'${GREEN}re${DEF_COLOR}' for ${NAME} executed successfully!"

.PHONY: clean fclean re
