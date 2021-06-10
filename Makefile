.PHONY: ios

OUT_PATH="./build"

clean:
	env GO111MODULE=on go clean -cache
	gomobile clean
	rm -rf $OUT_PATH

ios:
	GOARCH=arm64 gomobile bind -v -ldflags "-s -w" -o build/Mobile.framework -target=ios ./libmobile/src/mobile
	cp -r build/Mobile.framework ./iOS/Test/