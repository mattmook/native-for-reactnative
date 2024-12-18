import Foundation

// Create a simple shopping cart system. You must manage a list of
// items in the cart, calculate the total price, and apply a discount.

// Requirements:
// - Use optionals to handle the discount code (it can be nil).
// - Use if-else or guard statements to validate the discount code.
// - Use loops or higher-order functions (like map, reduce) for
//   calculating the total price.
// - Properly format the output.

// Helpful references:
// - Swift VS TypeScript Comparison CheatSheet
//   https://mesqueeb.github.io/SwiftVsTypeScript/
// - Swift is like TypeScript
//   https://alhazmy13.github.io/swift-is-like-typescript/
// - Syntax Comparison: TypeScript vs Swift
//   https://medium.com/@yankuan/7c94dfb2f7da
// - Swift 5.1 Cheat Sheet and Quick Reference
//   https://koenig-media.raywenderlich.com/uploads/2020/12/RW-Swift-5.1-Cheatsheet-1.0.pdf



// 1. Item structure
//    Define a struct called Item with the following properties:
//    - name (String)
//    - price (Double)

// <fill in your code here>




// 2. Cart structure
//    Create a struct called Cart with the following:
//    - items (an array of Item)
//    - A function addItem to add an Item to the cart.
//    - A function totalPrice with optional parameter discountCode
//      that returns the total price.
//      If the discount code "DISCOUNT10" is provided, apply a
//      10% discount to the total.
//    - Optional bonus: Label discountCode as withDiscount.
//    - Optional bonus: Provide a default discountCode.
//    - Optional bonus: Ensure cart doesn't exceed 5 items.
//    - Optional bonus: Round result down to 2 decimal places.

// <fill in your code here>




// 3. Main functionality

// Create some items
let apple = Item(name: "Apple", price: 1.99)
let banana = Item(name: "Banana", price: 0.99)
let orange = Item(name: "Orange", price: 2.49)

// Create the cart
var cart = Cart()

// Add items to the cart
cart.addItem(item: apple)
cart.addItem(item: banana)
cart.addItem(item: orange)

// Calculate and print total price without discount
let totalWithoutDiscount = cart.totalPrice(discountCode: nil)
print("Total Price without discount: \(totalWithoutDiscount)")

// Calculate and print total price with a discount
let totalWithDiscount = cart.totalPrice(discountCode: "DISCOUNT10")
print("Total Price with DISCOUNT10: \(totalWithDiscount)")
