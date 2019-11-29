//
//  ViewController.swift
//  TestKit
//
//  Created by iOS-dev on 2019/11/26.
//  Copyright © 2019 iOS-dev. All rights reserved.
//

import UIKit


class TestSwift {
    
    dynamic var aBoll :Bool = true
    var aInt : Int = 0
    dynamic let testStringOne  = "testStringOne"
    let testStringTwo  = "testStringTwo"
    let testStringThr  = "testStringThr"
    func testReturnVoidWithaId(aId : UIView) {
        
        print("TestASwiftClass.testReturnVoidWithaId")
    }
    
}


class ViewController: UIViewController {
    let testStringOne  = "testStringOne"
    let testStringTwo  = "testStringTwo"
    let testStringThr  = "testStringThr"
    var count:UInt32 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let  swiftClass = TestSwift()
        let  proList = class_copyIvarList(object_getClass(swiftClass), &count)
        
        for  i in 0..<numericCast(count) {
            
            let property = ivar_getName(proList![i]);
            //            print("属性成员属性:%@",String.init(utf8String: property) ?? "没有找到你要的属性");
            print(String.init(utf8String: (property!)) ?? "没有找到你要的属性")
        }
        
    }
    
    
}

