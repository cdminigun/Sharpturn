
CXXFLAGS:=-O2 -g -Wall -Wextra -Wshadow -std=c++0x 
LDFLAGS:=-lcrypto

ALL:
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o sharp sharp.cpp
