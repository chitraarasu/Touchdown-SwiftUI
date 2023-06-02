//
//  Constant.swift
//  Touchdown
//
//  Created by kirshi on 6/1/23.
//

import SwiftUI

//  DATA

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

//  COLOR

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(.systemGray)

//  LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: .init(.flexible(), spacing: rowSpacing), count: 2)
}

//  UX
//  API
//  IMAGE
//  FONT
//  STRING
//  MISC
