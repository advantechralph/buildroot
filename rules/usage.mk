
define bar
$(shell printf "#%.0s" {1..55})
endef

define title
$(shell printf "# %-51s #" "")
$(shell printf "# %-51s #" "i.MX6  Buildroot Usage")
$(shell printf "# %-51s #" "")
endef

define usage_info

$(call title)

endef

export usage_info

usage help: 
	@echo "$${usage_info}" | more

default: usage;

