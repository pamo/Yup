Yup
========

## Blank App
1. Created a blank Swift iOS app
2. Boilerplate gitignore with the [gitignore.io CLI](http://www.gitignore.io/cli)

## Parse
3. Created a new app in Parse and downloaded the SDK. [QuickStart Parse iOS Guide](https://www.parse.com/apps/quickstart?#parse_data/mobile/ios/native/existing)
4. Made a Keys property list to hide the Parse credentials
* New -> File... -> Resources -> Property List
* Added two string values to the root list: _parseApplicationId_ and _parseClientKey_
* Keys.plist added to .gitignore

## Imports
See [Using Parse.com in a Swift Project](http://www.bradheintz.com/ios/2014/06/10/tutorial-using-parse-com-in-a-swift-project/)
5. Import Parse.framework among many others into target build phases
6. Created a bridging header file
7. Set Parse credentials from plist in AppDelegate.swift
