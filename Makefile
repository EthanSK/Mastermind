CXX = g++
CXXFLAGS = -std=c++11

all: main.o
	$(CXX) $(CXXFLAGS) $^ -o prog

#implicit rule	
#$< variable denotes the first dependency, %.cpp here.
%.o : %.cpp %.hpp
	$(CXX) $(CXXFLAGS) -c $<

#other variables, for information:
#$@ the target
#$^ list of all the dependencies (including the first one, denoted by $<)

	
run:
	./prog
	
clean:
	rm *.o prog

#reminder, the format of a rule is
#
#target: dependency(ies)
#	command(s)
#
#(the second line has to start with a TABULATION)
