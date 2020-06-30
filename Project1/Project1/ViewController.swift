//
//  ViewController.swift
//  Project1
//
//  Created by Tao.T on 2020/6/30.
//  Copyright © 2020 Tao.T. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        for item in items {
            if item.hasSuffix("nssl") {
                
            }
        }
    }
    
    

}

