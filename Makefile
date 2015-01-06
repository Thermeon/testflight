deps:
	go get -d -v ./...
	go list -f '{{join .TestImports " "}}' ./... | xargs -n1 go get -d

test: deps
	go test -v ./...
