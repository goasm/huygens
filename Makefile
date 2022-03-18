BUILD_FLAGS := -ldflags "-s -w"
OUTPUT_PATH := ./bin/huygens

.PHONY: default

default: build

build:
	go build -o $(OUTPUT_PATH) $(BUILD_FLAGS) ./cmd/huygens
	@echo "Build done"

clean:
	rm -rf bin

test:
	go test
