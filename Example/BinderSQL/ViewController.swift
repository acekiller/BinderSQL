//
//  ViewController.swift
//  BinderSQL
//
//  Created by acekiller on 04/07/2023.
//  Copyright (c) 2023 acekiller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("nihao".hashValue)
        print("nihao".hashValue)
        print("nihao".hashValue)
        let value = "nihao"
        print(value.hashValue)
        print("hello".hashValue)
        print(DispatchQueue.main.label)
        print(Thread.main.name)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

