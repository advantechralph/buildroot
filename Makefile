

ifdef _REALRUN

include macro.mk
include rules/*.mk

else
	
export _REALRUN=1
.DEFAULT_GOAL:=usage
_MAKEFILE=$(CURDIR)/$(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST))
_MAKEFLAGS=$(filter-out --,$(MAKEFLAGS))

%: 
	@time make -f $(_MAKEFILE) $@ $(filter-out --,$(_MAKEFLAGS))

endif

