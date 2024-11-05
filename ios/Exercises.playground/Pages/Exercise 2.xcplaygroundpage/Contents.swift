import Foundation

// Create a new expo module

// Helpful references:
// - Module API Reference
//   https://docs.expo.dev/modules/module-api/



// 1. Create a new expo module
//    - npx create-expo-module@latest --local
//      What is the name of the local module? shopping-manager
//      What is the native module name? ShoppingManager
//      What is the Android package name? expo.modules.shoppingmanager


// 2. Edit the file modules/shopping-manager/index.ts
//    These are the functions that the app will call.
//    - Create an entry for getTotalPrice:
//        export function getTotalPrice(): string {
//          return ShoppingManagerModule.getTotalPrice();
//        }
//    - Create an entry for getTotalPriceAsync:
//        export async function getTotalPriceAsync(): Promise<string> {
//          return await ShoppingManagerModule.getTotalPriceAsync();
//        }

// 3. Run cocoapods
//    - cd ios
//    - pod install

// 4. In Xcode, locate the ShoppingManagerModule code in
//      Pods > Development Pods > Shopping Manager > ShoppingManagerModule

//    In the module (see Module API Reference for guidance):
//    - Define a function called getTotalPrice and return "£2.99"
//    - Define a function called getTotalPriceAsync, sleep for 5 seconds with `sleep(5) and return "£3.78"

// 5. In app/(tabs)/index.tsx
//    - Import the functions with:
//        import { getTotalPrice, getTotalPriceAsync } from '../../modules/shopping-manager';
//    - Alter the code to display the values returned by the above two calls.

// 6. Run the app:
//    - npx expo run:ios
