//
//  StoreDetailProductsView.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 14/12/23.
//

import SwiftUI

struct StoreDetailProductsView: View {
    let store: StoreType
    @State private var isPresentingProducDetailview = false
    var body: some View {
        VStack {
            Text("Produtos")
                .font(.title2)
                .bold()
                .padding()
            
            ForEach(store.products) { product in
                Button {
                    isPresentingProducDetailview = true
                } label: {  
                    StoreDetailProductItemView(product: product)
                }
                .sheet(isPresented: $isPresentingProducDetailview) {
                    ProductDetailview(product: product)
                }
                
            }
        }
    }
}

#Preview {
    StoreDetailProductsView(store: storesMock[0])
}
