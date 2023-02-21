bb : main.o
	$(CXX) -g -o bb main.cpp



##########################################
VPATH=src:

# configure header file path to compilation option
override CPPFLAGS += $(patsubst %,-I%,$(subst :, , $(VPATH)))
# insert gdb info
override CXXFLAGS += -g

###########################################
# auto generate .d according to .cpp
%.d : %.cpp
	set -e; rm -f $(@); \
	$(CXX) -MM $(CPPFLAGS) $(<) > $(@).$$$$; \
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@; \
	rm -f $@.$$$$

main.o : main.cpp main.d






###########################################
.PHNOY : env_info all install print tar dist TAGS check test clean
env_info:
	@echo VPATH=$(VPATH)
	@echo CFLAGS=$(CPPFLAGS)
	@echo CXXFLAGS=$(CXXFLAGS)
	
all:

install:

print:

tar:

dist:

TAGS:

check:

test:


clean:
	rm -f *.o *.d
