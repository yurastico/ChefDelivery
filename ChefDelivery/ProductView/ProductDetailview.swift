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
            VStack(alignment: .leading,spacing: 16) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 20)
                
                Text(product.name)
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                    .padding(.top)
                
                Text(product.description)
                    .padding(.horizontal)
                
                Text(product.formattedPrice)
                    .font(.title3)
                    .bold()
                    .padding(.horizontal)
            }
            Spacer()
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
            Spacer()
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
}

#Preview {
    ProductDetailview(product: storesMock[0].products[0])
}
