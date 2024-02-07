//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by Y K on 07.02.2024.
//

import SwiftUI

struct AddToCartDetailView: View {
    var body: some View {
        Button {
            
        }label: {
            Spacer()
            Text("AddToCart".uppercased())
                .font(.system(.title2, design: .rounded, weight: .bold))
                .foregroundStyle(.white)
            Spacer()
        }
        .padding(15)
        .background(Color(
            red: sampleProduct.red,
            green: sampleProduct.green,
            blue: sampleProduct.blue))
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView()
        .previewLayout(.sizeThatFits)
        .padding()
}
