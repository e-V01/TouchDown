//
//  Constant.swift
//  TouchDown
//
//  Created by Y K on 01.02.2024.
//

import SwiftUI

//DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
//COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)
//LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] { // only var can be used for computed prop
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
//API
//IMAGE
//FONT
//String
//MISC
