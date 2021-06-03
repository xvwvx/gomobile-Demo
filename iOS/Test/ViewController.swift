//
//  ViewController.swift
//  Test
//
//  Created by Snow on 2021/6/2.
//

import UIKit
import Mobile

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let printer = SwiftPrinter()
        if let greeter = MobileNewGreeter(printer) {
            greeter.greet("Mat")
            print(greeter.value)
        }
        
    }


}

