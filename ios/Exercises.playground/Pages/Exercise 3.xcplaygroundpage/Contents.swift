import Foundation

// Create a new expo module
// - npx create-expo-module@latest --local
//   Use the name shopping-manager

// Helpful references:
// - API calls using Swift async/await and error handling
//   https://medium.com/@gianlucaannina_34907/c8efcb000e63



// 1. In Xcode, locate the ShoppingManagerModule code in
//      Pods > Development Pods > Shopping Manager > ShoppingManagerModule

//    In the module:
//    - Call the following function from getTotalPriceAsync
//        func loadPrice() async throws -> String{
//            let url = URL(string: "https://github.com/mattmook/native-for-reactnative/raw/refs/heads/main/price.txt")!
//
//            let (data, response) = try await URLSession.shared.data(from: url)
//            let text = String(data: data, encoding: .ascii) ?? "Error parsing"
//            return text
//        }


// 2. Run the app:
//    - npx expo run:ios
