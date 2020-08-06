//
//  Person.swift
//  Project10
//
//  Created by Tao.T on 2020/7/31.
//  Copyright © 2020 TaoTao. All rights reserved.
//

import UIKit

class Person: NSObject, Codable {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
