package com.mattmook.nativeforreactnative

import com.facebook.react.bridge.Promise
import com.facebook.react.bridge.ReactApplicationContext
import com.mattmook.nativeforreactnative.shoppingmanager.NativeShoppingManagerSpec

class NativeShoppingManagerModule(reactContext: ReactApplicationContext) :
    NativeShoppingManagerSpec(reactContext) {
    override fun getName() = NAME

    override fun totalPrice() = "Kotlin"

    override fun totalPriceAsync(promise: Promise) {
        promise.resolve("Kotlin Async")
    }

    companion object {
        const val NAME = "NativeShoppingManager"
    }
}
