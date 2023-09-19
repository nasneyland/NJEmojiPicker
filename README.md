# NJEmojiPicker
[SwiftUI] Custom Emoji Picker

You can easily enter an emoji using the emoji picker. Available only in ios version 13.0 and later.

<img src="https://github.com/nasneyland/NJEmojiPicker/assets/113892130/f363adda-eb66-4077-8b7b-89ddea1239d6"  width="200" height="400"/>
<img src="https://github.com/nasneyland/NJEmojiPicker/assets/113892130/118b77b2-c990-4e30-95d6-57c6c792acc4"  width="200" height="400"/>



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
