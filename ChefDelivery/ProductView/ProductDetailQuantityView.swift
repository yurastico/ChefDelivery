//
//  ProductDetailQuantityView.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 14/12/23.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    @Binding var quantity: Int
    var body: some View {
        VStack(spacing: 16) {
            Text("Quantidade")
                .font(.title2)
                .bold()
            
            HStack {
                Button {
                    if quantity > 0 {
                        quantity -= 1
                    }
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .bold()
                }
                .disabled(quantity == 1)
                
                Text("\(0)")
                    .font(.title2)
                Button {
                    quantity += 1
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .bold()
                }
                
            }
        }
    }
}

#Preview {
    ProductDetailQuantityView(quantity: .constant(1))
}
