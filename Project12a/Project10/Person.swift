//
//  Person.swift
//  Project10
//
//  Created by Tao.T on 2020/7/31.
//  Copyright © 2020 TaoTao. All rights reserved.
//

import UIKit

//这里问什么使用class而不是struct?
//NSCoding协议只能被NSCoding遵循

class Person: NSObject, NSCoding {
    
    var name: String
    var image: String

    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    required init?(coder: NSCoder) {
        name = coder.decodeObject(forKey: "name") as? String ?? ""
        image = coder.decodeObject(forKey: "image") as? String ?? ""
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(image, forKey: "image")
    }
    
    
}


