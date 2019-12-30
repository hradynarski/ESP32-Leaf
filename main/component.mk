#
# "main" pseudo-component makefile.
#
# (Uses default behaviour of compiling all source files in directory, adding 'include' to include path.)
COMPONENT_ADD_INCLUDEDIRS := include

COMPONENT_SRCDIRS := .

LIB_FILES := $(shell ls $(COMPONENT_PATH)/lib*.a)

LIBS := $(patsubst lib%.a,-l%,$(notdir $(LIB_FILES)))

COMPONENT_ADD_LDFLAGS +=  -L$(COMPONENT_PATH)/ $(LIBS)

ALL_LIB_FILES += $(LIB_FILES)

