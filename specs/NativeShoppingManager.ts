import type {TurboModule} from 'react-native';
import {TurboModuleRegistry} from 'react-native';

export interface Spec extends TurboModule {
  getNativeTotalPrice(): string;
  getNativeTotalPriceAsync(): Promise<string>;
}

export default TurboModuleRegistry.get<Spec>("NativeShoppingManager") as Spec | null;
