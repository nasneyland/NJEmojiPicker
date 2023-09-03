# NJEmojiPicker
[SwiftUI] Custom Emoji Picker

You can easily enter an emoji using the emoji picker. Available only in ios version 13.0 and later.

## Usage

```swift
import NJEmojiPicker

...

NJEmojiPicker($emoji,
              language: .ko,
              column: 5,
              multipleSelect: true,
              showsIndicators: false,
              accentColor: .blue,
              textColor: .white)
```


## Installation

In Xcode go to `File -> Swift Packages -> Add Package Dependency` and paste in the repo's url: `https://github.com/nasneyland/NJEmojiPicker`
