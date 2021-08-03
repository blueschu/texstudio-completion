OUTPUT_DIR := output
TEMPLATE_DIR := templates
RENDER_JINJA2 := python3 ./render_template.py

TEMPLATE_FILES = $(wildcard $(TEMPLATE_DIR)/*.jinja2)
TARGET_FILES := $(patsubst $(TEMPLATE_DIR)/%.jinja2,$(OUTPUT_DIR)/%,$(TEMPLATE_FILES))

# Rule for generating rendering Jinja2 files.
# $(OUT_DIR) is listed as an order-only prerequisite so that changes
# to the directory don't force all .cwl files to be re-compiled.
$(OUTPUT_DIR)/%: $(TEMPLATE_DIR)/%.jinja2 | $(OUTPUT_DIR)
	$(RENDER_JINJA2) $< > $@

.PHONY: all list_templates

# Default target - render all templates.
all: $(TARGET_FILES)

# Create the output directory if it does not yet exist.
$(OUTPUT_DIR):
	@mkdir -p $(OUTPUT_DIR)

dbglist:
	@echo "Template files: $(TEMPLATE_FILES)"
	@echo "Target files:   $(TARGET_FILES)"

clean:
	rm $(TARGET_FILES)
