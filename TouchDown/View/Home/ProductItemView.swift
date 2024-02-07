//
//  ProductItemView.swift
//  TouchDown
//
//  Created by Y K on 07.02.2024.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
                .clipShape(RoundedRectangle(cornerRadius: 12))
            // name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            // price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
                
        }
    }
}

#Preview {
    ProductItemView(product: products[0])
        .previewLayout(.fixed(width: 200, height: 300))
        .padding()
        .background(colorBackground)
}
