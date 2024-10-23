import Foundation

// Create a simple shopping cart system. You must manage a list of items
// in the cart, calculate the total price, and apply a discount.

// Requirements:
// - Use optionals to handle the discount code (it can be nil).
// - Use if-else or guard statements to validate the discount code.
// - Use loops or higher-order functions (like map, reduce) for calculating
//   the total price.
// - Properly format the output.




// 1. Item structure
//    Define a struct called Item with the following properties:
//    - name (String)
//    - price (Double)

// <fill in your code here>




// 2. Cart structure
//    Create a struct called Cart with the following:
//    - items (an array of Item)
//    - A function addItem(item: Item) to add an item to the cart.
//    - A function totalPrice(discountCode: String?) -> Double that
//      calculates the total price. If a valid discount code "DISCOUNT10"
//      is provided, apply a 10% discount to the total.

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
