CC=gcc
FLAGS=-Wall
EXEC_NAME=abeep
INSTALL_DIR=/usr/bin

default : abeep

clean :
	rm ${EXEC_NAME}

abeep : abeep.c sintable.c
	${CC} ${FLAGS} -o ${EXEC_NAME} abeep.c sintable.c -lasound

install : abeep
	install -m0755 ${EXEC_NAME} ${INSTALL_DIR}