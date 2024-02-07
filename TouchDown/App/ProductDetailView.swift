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
                .zIndex(1)
            //Detail bottom Part
            VStack(alignment: .center, spacing: 0) {
                //Ratings + sizes
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                //Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                //Quant + fav
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                //Add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape()).padding(.top, -105))
           
            Spacer()

        }
        .zIndex(0)
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
