//
//  Father.swift
//  Pods
//
//  Created by wangcong on 30/06/2017.
//
//

import Foundation

open class Father: NSObject, PersonProtocol {

    var name: String
    var kid: Kid

    public init(name: String, kid: Kid) {
        self.name = name
        self.kid = kid
    }

    // 喂食
    open func feed(_ food: String) {
        print("\(name) is feeding \(kid.name ?? "kid") eat \(food)")
    }

    public func eat() {
        print("\(name) is eating")
    }

    public func run() {
        print("\(name) is runing")
    }

}
