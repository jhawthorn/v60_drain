TARGET=v60_drain.stl

all: $(TARGET)

%.stl: %.scad
	openscad $< -o $@

clean:
	rm -f $(TARGET)
