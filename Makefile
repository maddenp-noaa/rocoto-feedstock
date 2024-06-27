TARGETS = package

.PHONY: $(TARGETS)

all:
	$(error Valid targets are: $(TARGETS))

package:
	conda build --error-overlinking recipe
