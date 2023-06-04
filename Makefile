.PHONY: build

build:
	bun build --minify --outdir=build ./src/index.tsx

.PHONY: container

container:
	docker build -t bunny:latest -f dockerfile .

.PHONY: dev

dev:
	rm -rf ./build
	bun dev.tsx
