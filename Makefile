.ONESHELL:

PROJECT_NAME     := Retouching Samples
ROOT_DIR         := $(realpath $(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
PORT             := 8080
IP               := 0.0.0.0
DIRECTORY        := $(ROOT_DIR)
NODE_MODULES_DIR := $(realpath $(ROOT_DIR)/node_modules)
NODE_BIN_DIR     := $(realpath $(NODE_MODULES_DIR)/.bin)

# Vite CLI Options: https://vite.dev/guide/cli.html
VITE_CMD         := $(realpath $(NODE_BIN_DIR)/vite)
VITE_FLAGS       :=

all: dev
.PHONY: all

dev: VITE_FLAGS :=
dev: VITE_FLAGS += --open
dev:
	$(VITE_CMD) $(VITE_FLAGS) --port $(PORT) --host $(IP) --base $(DIRECTORY)
.PHONY: dev

clean:
.PHONY: clean

