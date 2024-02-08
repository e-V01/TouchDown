//
//  Shop.swift
//  TouchDown
//
//  Created by Y K on 08.02.2024.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false // show or hide product detail view
    @Published var selectedProduct: Product? = nil
}
