//
//  ViewController.swift
//  XKProjectModule
//
//  Created by xk on 04/21/2022.
//  Copyright (c) 2022 xk. All rights reserved.
//

import UIKit
import XKProjectModule

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        XKSpeedy.environmentExcute {
            print("debug print")
        } release: {
            print("release print")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

