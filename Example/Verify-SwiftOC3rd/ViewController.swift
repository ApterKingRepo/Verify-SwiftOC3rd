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

        family.father = Father(name: "Davi", kid: kid)
        family.mother = Mother(name: "Lily", kid: kid)

        family.feed("牛肉", mFood: "牛奶")

        let button = UIButton(frame: CGRect(x: 200, y: 200, width: 100, height: 50))
        button.setTitle("跳转", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(jump), for: .touchUpInside)
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func jump() {
        let mapVC = MapViewController()
        self.present(mapVC, animated: true, completion: nil)
    }

}
