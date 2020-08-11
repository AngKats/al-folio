all: build

# Local variable overrides and additional make targets, if available
-include Makefile.local

JEKYLL = bundle exec jekyll

CONFIG_YML ?= _config_angeliki.yml

# Common flags for all jekyll commends
JEKYLL_FLAGS += --config $(CONFIG_YML)

clean:
	$(JEKYLL) clean $(JEKYLL_FLAGS)

build:
	$(JEKYLL) build $(JEKYLL_FLAGS)

serve:
	$(JEKYLL) serve $(JEKYLL_FLAGS)

debug:
	$(JEKYLL) serve -t $(JEKYLL_FLAGS)	

production:
	$(JEKYLL) build --destination $(HOME)/OneDrive - University of Bristol/AngKats.github.io $(JEKYLL_FLAGS)	