import UIKit
import PlaygroundSupport
import SwiftUI

// Create a simple SwiftUI view

// Requirements:
// - Display an item with a title, description, price and image

// Helpful references:
// - SwiftUI 2.0 Cheat Sheet
//   https://github.com/SimpleBoilerplates/SwiftUI-Cheat-Sheet?tab=readme-ov-file#layout

// 1. Update ShoppingItemView rendering
//    - Name, description, price and image are already provided to the ShoppingItemView
//    - Use the following code to render an image:
//        Image(uiImage: image)
//    - Use https://dribbble.com/shots/19529679-SHOPPING-CART as inspiration.
//    - Update the contents of body to render your layout.
//    - Optional bonus: Set text attributes to style the text as appropriate.

struct ShoppingItemView: View {
    let name: String
    let description: String
    let price: String
    let image: UIImage
    
    var body: some View {
        Text("Hello SwiftUI")
    }
}


// The following code renders the preview image
PlaygroundPage.current.setLiveView(ShoppingItemView(name: "Milk Maker", description: "30 Vege Capsules", price: "$79", image: UIImage(named: "Item1.jpg")!))
