//
//  ProductDetailview.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 14/12/23.
//

import SwiftUI

struct ProductDetailview: View {
    @State private var quantity = 1
    let product: ProductType
    var body: some View {
        VStack {
            ProductDetailHeaderView(product: product)
            Spacer()
            ProductDetailQuantityView(quantity: $quantity)
            Spacer()
            productDetailButton
        }
    }
    
    
    var productDetailButton: some View {
        Button {
            
        } label: {
            HStack {
                Image(systemName: "cart")
                
                Text("Adicionar ao carrinho")
            }
            .padding(.horizontal,32)
            .padding(.vertical,16)
            .font(.title3)
            .bold()
            .background(Color.colorRed)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 32))
            .shadow(color: .colorRedDark.opacity(0.5), radius: 10,x: 6,y: 8)
        }
    }
    
}

#Preview {
    ProductDetailview(product: storesMock[0].products[0])
}
