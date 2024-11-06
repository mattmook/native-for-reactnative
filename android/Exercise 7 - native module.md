# Exercise – native module

Create a native module directly using the new architecture.


## Helpful references

- [Native Modules](https://reactnative.dev/docs/next/turbo-native-modules-introduction)


## Instructions


1.  Open the project in Android Studio
    - File > Open…
    - android i.e. in the root dir of our project



1.  Create typed specification
    -   In the root folder, create a new folder called `specs`.
    -   Add a file called NativeShoppingManager.ts with the following content:
      
        ```
        import type {TurboModule} from 'react-native';
        import {TurboModuleRegistry} from 'react-native';
        
        export interface Spec extends TurboModule {
          getNativeTotalPrice(): string;
          getNativeTotalPriceAsync(): Promise<string>;
        }
        
        export default TurboModuleRegistry.get<Spec>("NativeShoppingManager") as Spec | null;
        ```
        
        The spec file defines the contract between react native and native code. 

1.  Generate code with codegen
    -   For codegen to work, we have to tell it about our spec file, which we do by adding the following entry into the `package.json` file:
    
        ```
        "codegenConfig": {
          "name": "NativeShoppingManagerSpec",
          "type": "modules",
          "jsSrcsDir": "specs",
          "android": {
            "javaPackageName": "com.mattmook.nativeforreactnative.shoppingmanager"
          }
        },
        ```
        
        As we saw when creating an Expo module we have to specify a Java package name for Android.
    -   Codegen will run automatically as part of the build but we can also trigger it manually with `./gradlew generateCodegenArtifactsFromSchema`. We can also run this within Android Studio in the Gradle panel.

1.  Write our native platform implementation
    -   Codegen will have created a NativeShoppingManagerSpec class which we need to create an implementation of. In our project create a Kotlin class called NativeShoppingManagerModule with the following stub:
    
        ```
        class NativeShoppingManagerModule(reactContext: ReactApplicationContext) :
                NativeShoppingManagerSpec(reactContext) {
            override fun getName() = Name
            
            companion object {
                const val Name = "NativeShoppingManager"
            }
        }
        ```
        
    -   Create implementations for `getNativeTotalPrice` and `getNativeTotalPriceAsync`.
    -   To register our module we first need to create a package which defines some metadata:

        ```
        class NativeShoppingManagerPackage : TurboReactPackage() {
            override fun getModule(name: String, reactContext: ReactApplicationContext): NativeModule? {
                return if (name == NativeShoppingManagerModule.NAME) {
                    NativeShoppingManagerModule(reactContext)
                } else {
                    null
                }
            }
        
            override fun getReactModuleInfoProvider(): ReactModuleInfoProvider {
                return ReactModuleInfoProvider {
                    mapOf(
                        NativeShoppingManagerModule.NAME to ReactModuleInfo(
                            _name = NativeShoppingManagerModule.NAME,
                            _className = NativeShoppingManagerModule.NAME,
                            _canOverrideExistingModule = false,
                            _needsEagerInit = false,
                            isCxxModule = false,
                            isTurboModule = true
                        )
                    )
                }
            }
        }
        ```
        
    -   Finally we can register the module in the MainApplication class with:
    
        ```
        override fun getPackages() = PackageList(this).packages.apply {
            add(NativeShoppingManagerPackage())
        }
        ```

1.  Write our application code
    -   Import the module with `import NativeShoppingManager from '../../specs/NativeShoppingManager';`
    -   The async call can be unwrapped with:
    
        ```
        const [displayTotalPriceAsync, setDisplayTotalPriceAsync] = useState("Not available");

        NativeShoppingManager?.getNativeTotalPriceAsync()?.then((result) => {
            setDisplayTotalPriceAsync(result)
        }).catch(() => { error =>
            console.log(error)
            setDisplayTotalPriceAsync("Something wrong")
        })
        ```

1.  Run the app:
    - npx expo run:android

1.  Optional bonus: Implement `getNativeTotalPriceAsync` with coroutines.

