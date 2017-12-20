//
//  TranslatePlistToModel.swift
//  SwiftPropertyListDemo
//
//  Created by xcodedev on 20/12/2017.
//  Copyright © 2017 xcodedev. All rights reserved.
//

import Foundation

class TranslatePlistToModel {
    
    func translatePlistData(fileName: String, in bundle: Bundle) -> PropertyListModel? {
        guard let urlPath = bundle.path(forResource: fileName, ofType: "plist") else {return nil}
        let setingsURL = URL(fileURLWithPath: urlPath)
        var plistModel: PropertyListModel?
        
        do {
            guard let data = try? Data(contentsOf: setingsURL) else {return nil}
            let decoder = PropertyListDecoder()
            plistModel = try decoder.decode(PropertyListModel.self, from: data)
            guard let plistModel = plistModel else {return nil}
            print("plist test: \(String(describing: plistModel.pies[0]))")
            return plistModel
        } catch {
            print("error: \(error.localizedDescription)")
            return nil
        }
        
    }

}
