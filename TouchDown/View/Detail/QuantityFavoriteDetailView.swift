//
//  QuantityFavoriteDetailView.swift
//  TouchDown
//
//  Created by Y K on 07.02.2024.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    @State private var counter: Int = 0
    var body: some View {
        HStack(alignment: .center, spacing: 6){
            Button {
                if counter > 0 {
                    counter -= 1
                }
                
            } label: {
                Image(systemName: "minus.circle")
            }
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                if counter < 100 {
                    counter += 1
                }
                
            } label: {
                Image(systemName: "plus.circle")
            }
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundStyle(.pink)
            }
            
        }
        .font(.system(.title, design: .rounded))
        .foregroundStyle(.black)
        .imageScale(.large)
    }
}

#Preview {
    QuantityFavoriteDetailView()
        .previewLayout(.sizeThatFits)
        .padding()
}
