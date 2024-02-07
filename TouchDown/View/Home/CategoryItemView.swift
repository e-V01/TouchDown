//
//  CategoryItemView.swift
//  TouchDown
//
//  Created by Y K on 07.02.2024.
//

import SwiftUI

struct CategoryItemView: View {
    let category: Category
    var body: some View {
            Button {
                
                } label: {
                    HStack(alignment: .center, spacing: 6) {
                        
                        Image(category.image)
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30, alignment: .center)
                            .foregroundStyle(.gray)
                        
                        Text(category.name.uppercased())
                            .fontWeight(.light)
                            .foregroundStyle(.gray)
                        
                        Spacer()
                }
                    .padding()
                    .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 12)))
                    .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
        }
    }
}

#Preview {
    CategoryItemView(category: categories[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
