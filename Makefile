LDFLAGS_COMMON = -framework GLUT -framework OpenGL -lstdc++
CFLAGS_COMMON = -c -Wall -I./ -I../ -O3 -DGL_SILENCE_DEPRECATION

# calls:
CC         = g++
CFLAGS     = ${CFLAGS_COMMON}
LDFLAGS    = ${LDFLAGS_COMMON}
EXECUTABLE = fieldViewer

SOURCES    = fieldViewer.cpp COLOR_FIELD_2D.cpp 

OBJECTS    = $(SOURCES:.cpp=.o)

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f *.o fieldViewer
