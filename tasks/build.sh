if xcodebuild clean build  -project RetailStore.xcodeproj -scheme RetailStore -destination 'platform=iOS Simulator,OS=10.3.1,name=iPhone 6s' CONFIGURATION_BUILD_DIR='./build'
then
 cd build
 zip -r RetailStore.zip RetailStore.app
else
 exit 1
fi
