# KeyboardStickyButton
This repository demonstrates how to implement a sticky/floating button in SwiftUI that adapts to keyboard presence. The button sticks to the bottom when the keyboard is hidden and floats above the keyboard when it appears.
For a detailed explanation of this implementation, check out the accompanying blog post: [Creating a Sticky Floating Button with Just One Spacer](https://daheenallwhite.github.io/ios/swiftui/2023/11/11/SwiftUI-Keyboard-Sticky-Button/)
## Features

- Simple implementation using SwiftUI's `Spacer`
- Keyboard-aware button positioning
- Smooth transitions as keyboard appears/disappears

## Example

```swift
var body: some View {
    ZStack {
        // Your main content here
        
        VStack {
            Spacer() 
            Button("Send Code") {
                // Add button action
            }
        }
    }
    .padding(.all)
}
```
## How It Works
The magic happens by utilizing SwiftUI's `Spacer` within a `VStack`. The `Spacer` expands to fill available space, naturally pushing the button to the bottom. When the keyboard appears, it reduces the available space, causing the `Spacer` to shrink and the button to rise above the keyboard.

## UIKit Comparison
A UIKit implementation of this feature will be added to this repository soon. It will demonstrate two approaches:

1. Using inputAccessoryView
2. Modifying constraints by observing keyboard events

Stay tuned for updates!
