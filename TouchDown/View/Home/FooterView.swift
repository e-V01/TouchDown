//
//  FooterView.swift
//  TouchDown
//
//  Created by Y K on 01.02.2024.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10 ){
            Text("We offer the most cutting edge, comfrotable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)

            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundStyle(.gray)
                .layoutPriority(0)

            
            Text("Developed by Y K")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
                .layoutPriority(1)
            
        }
        .padding()
    }
}

#Preview {
    FooterView()
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
}
