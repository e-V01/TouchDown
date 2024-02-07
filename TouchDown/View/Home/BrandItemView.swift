//
//  BrandItemView.swift
//  TouchDown
//
//  Created by Y K on 07.02.2024.
//

import SwiftUI

struct BrandItemView: View {
    let brand: Brand
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 12)))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
    }
}

#Preview {
    BrandItemView(brand: brands[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
