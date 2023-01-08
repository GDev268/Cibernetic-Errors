COMPILER = g++
GLAD = glad/src/glad.c
CFLAGS = -O3 -Wall -fPIC -g -w
INCLUDE = -Iinclude/
CLIBS = -lGL -lGLU -lglfw -lm -lXrandr -lXi -lX11 -lXxf86vm -lpthread -ldl -lXinerama -lXcursor -lSDL2 -lSDL2_image -lSDL2_ttf -lopenal -lvorbisfile -lcurl
ILIBS = -I./glad/include/
SOURCE = source/*.cpp
EXSOURCE = source/*.cpp
DEST = export/pc/


pc: ${EXSOURCE}
	${COMPILER} ${GLAD} ${ILIBS} ${INCLUDE} ${EXSOURCE} ${CFLAGS} ${CLIBS} -o ${DEST}main; 
