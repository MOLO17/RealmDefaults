//
//  ViewController.swift
//  RealmDefaults_Demo
//
//  Created by Hiroshi Kimura on 2/25/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit
import RealmSwift
import RealmDefaults

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        try! MyAccount.write { (instance) in
            (instance as! MyAccount).name = "name"
        }
        
        let instance = MyAccount.instance as! MyAccount
        let name = instance.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

