# Exercise – expo module

Add Android support to the shopping-manager expo module we wrote in exercise 2


## Helpful references

- [Module API Reference](https://docs.expo.dev/modules/module-api/)


## Instructions

This Kotlin exercise assumes we completed exercise 2 where we created a native module using the Expo Mdoule API and
displayed a price synchronously and asynchronously using Swift. This Kotlin exercise assumes we've completed this.

1.  Open the project in Android Studio
    - File > Open…
    - android i.e. in the root dir of our project
    
1.  In Android Studio, locate the ShoppingManagerModule code in
    - shopping-manager > kotlin+java > expo.modules.shoppingmanager

    In the module (see Module API Reference for guidance):
    - Define a function called getTotalPrice and return "£2.99"
    - Define a function called getTotalPriceAsync, sleep for 5 seconds with `sleep(5) and return "£3.78"

1.  Run the app:
    - npx expo run:android

1.  Optional bonus: Use Kotlin Coroutines for getTotalPriceAsync

## FAQ

1.  A problem occurred starting process 'command 'node'
    - Open Settings
    - Navigate to Build, Execution, Deployment > Build Tools > Gradle
    - Change the Gradle JDK
