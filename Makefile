# make

build:
	swift build

update:
	swift package update

release:
	swift build -c release

run:
	swift run

# install: release
# 	install	
format:
	swift-format format --in-place --recursive "${PWD}/SwiftUILearning/"
	swift-format format --in-place --recursive "${PWD}/SwiftUILearningTests/"
	swift-format format --in-place --recursive "${PWD}/SwiftUILearningUITests/"

test:
	swift test

clean:
	rm -rf build
		
