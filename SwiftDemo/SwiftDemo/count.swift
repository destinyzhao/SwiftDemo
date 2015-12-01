//
//  count.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/24.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

extension Double {
    var km: Double { return self / 1000.0 }
    var m : Double { return self }
    var cm: Double { return self * 100.0 }
    var mm: Double { return self * 1000.0 }
    var ft: Double { return self / 3.28084 }
}
