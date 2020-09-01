//
//  Capital.swift
//  Project16
//
//  Created by Tao.T on 2020/9/1.
//  Copyright © 2020 TaoTao. All rights reserved.
//

import UIKit
import MapKit

class Capital: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var info: String?
    
    init(title: String?, coordinate: CLLocationCoordinate2D, info: String?) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }
}
