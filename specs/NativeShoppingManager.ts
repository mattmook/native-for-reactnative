//import type {TurboModule} from 'react-native';
import type { TurboModule } from "react-native/Libraries/TurboModule/RCTExport";
import { TurboModuleRegistry } from 'react-native';

export interface Spec extends TurboModule {
  totalPrice(): string;
  totalPriceAsync(): Promise<string>;
}

//export default TurboModuleRegistry.getEnforcing<Spec>('NativeShoppingManager') as Spec;

export default TurboModuleRegistry.get<Spec>("NativeShoppingManager") as Spec | null;
