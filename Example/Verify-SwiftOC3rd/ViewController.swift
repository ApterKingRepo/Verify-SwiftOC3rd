//
//  ViewController.swift
//  Verify-SwiftOC3rd
//
//  Created by wangcccong@foxmail.com on 06/30/2017.
//  Copyright (c) 2017 wangcccong@foxmail.com. All rights reserved.
//

import UIKit
import Verify_SwiftOC3rd

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let kid = Kid()
        kid.name = "小明"

        let family = Family()
        family.kid = kid
        family.fatherFeed("牛肉", mother: "牛奶")

//        var mapView = 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
