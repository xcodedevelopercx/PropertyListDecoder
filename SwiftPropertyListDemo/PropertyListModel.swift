//
//  PropertyListModel.swift
//  SwiftPropertyListDemo
//
//  Created by xcodedev on 20/12/2017.
//  Copyright © 2017 xcodedev. All rights reserved.
//

import Foundation

struct PropertyListModel: Codable {
    let inverseColors: Bool
    let pies: [String]
    let blue: Double
    let green: Double
    let red: Double
    
    enum CodingKeys: String, CodingKey {
        case inverseColors = "Inverse Colors"
        case pies = "Pies"
        case blue = "Blue"
        case green = "Green"
        case red = "Red"
    }
}

//<dict>
//<key>Inverse Colors</key>
//<false/>
//<key>Pies</key>
//<array>
//<string>Cherry</string>
//<string>Apple</string>
//<string>French Silk</string>
//<string>Coconut Cream</string>
//<string>Blueberry</string>
//<string>Boston Cream</string>
//</array>
//<key>Blue</key>
//<real>0.3</real>
//<key>Green</key>
//<real>0.0</real>
//<key>Red</key>
//<real>0.3</real>
//</dict>

