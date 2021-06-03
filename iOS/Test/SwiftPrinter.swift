//
//  SwiftPrinter.swift
//  Test
//
//  Created by Snow on 2021/6/2.
//

import UIKit
import Mobile

class SwiftPrinter: NSObject, MobilePrinterProtocol {
    
    public func printSomething(_ s: String?) {
      print("This just in:", s ?? "")
    }
    
}
