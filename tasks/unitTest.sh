xcodebuild test  -project RetailStore.xcodeproj -scheme RetailStore -destination 'platform=iOS Simulator,OS=10.3.1,name=iPhone 6s' CONFIGURATION_BUILD_DIR='./build' -enableCodeCoverage YES | xcpretty -r html
