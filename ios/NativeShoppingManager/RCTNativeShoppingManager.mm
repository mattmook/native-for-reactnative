#import "RCTNativeShoppingManager.h"

@interface RCTNativeShoppingManager()

@end

@implementation RCTNativeShoppingManager

RCT_EXPORT_MODULE(NativeShoppingManager)

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const facebook::react::ObjCTurboModule::InitParams &)params { 
  return std::make_shared<facebook::react::NativeShoppingManagerSpecJSI>(params);
}

- (NSString *)totalPrice { 
  return @"Obj-C++";
}

- (void)totalPriceAsync:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject { 
  resolve(@"Obj-C++ async");
}

@end
