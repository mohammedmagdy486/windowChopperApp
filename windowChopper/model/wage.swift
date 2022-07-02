//
//  wage.swift
//  windowChopper
//
//  Created by AMN on 1/25/22.
//

import Foundation
public class wage {
    class  func getHours(getwage wage : Double,andprice price:Double)-> Int{
        return Int(ceil(price/wage))
    }
}
