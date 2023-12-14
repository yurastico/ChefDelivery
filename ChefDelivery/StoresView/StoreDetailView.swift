//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 13/12/23.
//

import SwiftUI

struct StoreDetailView: View {
    let store: StoreType
    @State private var isPresentingProducDetailview = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(store.headerImage)
                    .resizable()
                    .scaledToFit()
                HStack {
                    Text(store.name)
                        .font(.title)
                        .bold()
                    Spacer()
                    Image(store.logoImage)
                }
                .padding(.vertical,8 ) // JA EH 8 POR PADRAO
                .padding(.horizontal)
                
                HStack {
                    Text(store.location)
                    Spacer()
                    ForEach(1...store.stars,id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.caption)
                    }
                }
                .padding(.vertical,8)
                .padding(.horizontal)
                
                Text("Produtos")
                    .font(.title2)
                    .bold()
                    .padding()
                
                ForEach(store.products) { product in
                    Button {
                        isPresentingProducDetailview = true
                    } label: {
                        HStack(spacing: 8) {
                            VStack(alignment: .leading,spacing: 8) {
                                Text(product.name)
                                    .bold()
                                
                                Text(product.description)
                                    .foregroundStyle(.black.opacity(0.5))
                                    .multilineTextAlignment(.leading)
                                Text(product.formattedPrice)
                            }
                            
                            Spacer()
                            
                            Image(product.image)
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                                .frame(width: 120,height: 120)
                                .shadow(color: .black.opacity(0.3), radius: 20, x: 6,y: 8)
                        }
                        .padding()
                        .foregroundStyle(.black)
                    }
                    .sheet(isPresented: $isPresentingProducDetailview) {
                        ProductDetailview(product: product)
                    }
                    
                }
            }
            
        }
        
        .navigationTitle(store.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 4) {
                        Image(systemName: "cart")
                        Text("Lojas")
                    }
                    .foregroundStyle(.colorRed)
                }
            }
        }
       
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
