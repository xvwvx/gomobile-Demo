# go mod init test
# brew install --cask android-ndk

# gomobile bind -v -o ./framework/Mobile.framework -target ios ./libmobile/src/mobile
# gomobile bind -v -target ios ./libmobile/src/mobile
# gomobile bind -v -target ios/arm64 ./libmobile/src/mobile
GOARCH=arm64 gomobile bind -v -target=ios ./libmobile/src/mobile

# gomobile bind -v -target android ./libmobile/src/mobile

cp -r Mobile.framework ./iOS/Test/