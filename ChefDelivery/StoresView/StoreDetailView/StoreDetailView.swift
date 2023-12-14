//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 13/12/23.
//

import SwiftUI

struct StoreDetailView: View {
    let store: StoreType
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                StoreDetailHeaderView(store: store)
                
                StoreDetailProductsView(store: store)
                

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
