//
//  ViewController.swift
//  SwiftPropertyListDemo
//
//  Created by xcodedev on 20/12/2017.
//  Copyright © 2017 xcodedev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let translation = TranslatePlistToModel()
        translation.translatePlistData(fileName: "data", in: Bundle.main)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

