//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Y K on 07.02.2024.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // NavBar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //Header
            HeaderDetailView()
                .padding(.horizontal)
            //Detail Top Part
            TopPartDetailView()
                .padding(.horizontal)
            //Detail bottom Part
            //Ratings + sizes
            //Description
            //Quant + fav
            //Add to cart
            Spacer()

        }
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue))
        .ignoresSafeArea(.all, edges: .all)
    }
}

#Preview {
    ProductDetailView()
        .previewLayout(.fixed(width: 375, height: 812))
}
