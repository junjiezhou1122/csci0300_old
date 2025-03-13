# ...existing code...

# Find the compiler flag that's causing issues and replace/fix it
# Look for CXX or CC variables and make sure they're set correctly
# Example modification:
CXX := g++
# or ensure it's using the right version:
# CXX := g++-11

# Make sure these flags are compatible with your compiler
CXXFLAGS := -std=gnu++2a -g -Wall -Wextra -Wshadow -mcmodel=kernel $(SANITIZE_OPTIONS) $(DEFS)
ASFLAGS := -g

# You may need to remove problematic flags from ASFLAGS or CXXFLAGS
# ...existing code...
