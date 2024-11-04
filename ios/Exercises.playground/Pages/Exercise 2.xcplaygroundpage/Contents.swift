import Foundation

// Create a new expo module
// - npx create-expo-module@latest --local
//   Use the name shopping-manager

// Helpful references:
// - Module API Reference
//   https://docs.expo.dev/modules/module-api/



// 1. Edit the file modules/shopping-manager/index.ts
//    These are the functions that the app will call.
//    - Create an entry for getTotalPrice:
//        export function getTotalPrice(): string {
//          return ShoppingManagerModule.getTotalPrice();
//        }
//    - Create an entry for getTotalPriceAsync:
//        export async function getTotalPriceAsync(): Promise<string> {
//          return await ShoppingManagerModule.getTotalPriceAsync();
//        }

// 2. Run cocoapods
//    - cd ios
//    - pod install

// 3. In Xcode, locate the ShoppingManagerModule code in
//      Pods > Development Pods > Shopping Manager > ShoppingManagerModule

//    In the module (see Module API Reference for guidance):
//    - Define a function called getTotalPrice and return "£2.99"
//    - Define a function called getTotalPriceAsync, sleep for 5 seconds with `sleep(5) and return "£3.78"

// 4. In app/(tabs)/index.tsx
//    - Import the functions with:
//        import { getTotalPrice, getTotalPriceAsync } from '../../modules/shopping-manager';
//    - Alter the code to display the values returned by the above two calls.

// 5. Run the app:
//    - npx expo run:ios
