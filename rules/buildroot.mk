.PHONY: buildroot
buildroot: $(builddir) $(builddir)/.build_buildroot

$(builddir)/.build_buildroot: $(builddir)/.prepare_buildroot $(builddir)/.compile_buildroot

$(builddir)/.prepare_buildroot: $(builddir)/.fetch_buildroot $(builddir)/.config_buildroot

$(builddir)/.config_buildroot: 
	@make -C $(buildrootsrc) O=$(buildrootbuild) $(buildrootconfig)
	@touch $@

$(builddir)/.compile_buildroot:
	@make -C $(buildrootsrc) O=$(buildrootbuild) 

