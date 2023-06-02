//
//  ProductModel.swift
//  Touchdown
//
//  Created by kirshi on 6/2/23.
//

import Foundation
import SwiftUI

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var formattedPrice: String {
        return "$ \(price)"
    }
    
    var formattedColor: Color {
        return Color(red: color[0], green: color[1], blue: color[2])
    }
}
