//
//  main.cpp
//  BLE_tester
//
//  Created by jjj on 5/7/25.
//  Copyright © 2025 jjj. All rights reserved.
//

#include <simpleble/SimpleBLE.h>

int main(int argc, char** argv) {
   if (!SimpleBLE::Adapter::bluetooth_enabled()) {
      std::cout << "Bluetooth is not enabled" << std::endl;
      return 1;
   }

   auto adapters = SimpleBLE::Adapter::get_adapters();
   if (adapters.empty()) {
      std::cout << "No Bluetooth adapters found" << std::endl;
      return 1;
   }

   // Use the first adapter
   auto adapter = adapters[0];

   // Do something with the adapter
   std::cout << "Adapter identifier: " << adapter.identifier() << std::endl;
   std::cout << "Adapter address: " << adapter.address() << std::endl;

   return 0;
}
