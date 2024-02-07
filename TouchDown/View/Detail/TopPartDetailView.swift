//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by Y K on 07.02.2024.
//

import SwiftUI

struct TopPartDetailView: View {
    @State private var isAnimating: Bool = false
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            //PRICE
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
                
            }
            .offset(y: isAnimating ? -50 : -75)
            Spacer()

            // PHOTO
            
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : 35)

                
        }
        .onAppear {
            withAnimation(.easeOut(duration: 1)) {
                isAnimating.toggle()
            }
        }
    }
}

#Preview {
    TopPartDetailView()
        .previewLayout(.sizeThatFits)
        .padding()
}
