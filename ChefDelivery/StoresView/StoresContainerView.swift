//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 13/12/23.
//

import SwiftUI

struct StoresContainerView: View {
    let title = "Lojas"
    @State private var ratingFilter = 0
    var stores: [StoreType]
    var filteredStores: [StoreType] {
        return stores.filter { $0.stars >= ratingFilter }
    }
    var body: some View {
        VStack(alignment: .leading)  {
            HStack {
                Text(title)
                    .font(.headline)
                Spacer()
                Menu("Filtrar") {
                    
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Limpar")
                    }
                    Divider()
                    
                    ForEach(1...5,id: \.self) { rating in
                        Button {
                            ratingFilter = rating
                        } label: {
                            if rating > 1 {
                                Text("\(rating) estrelas ou mais")
                            } else {
                                Text("\(rating) estrela ou mais")
                            }
                        }
                    }
                }
                .foregroundStyle(.black)
            }
            Spacer()
            VStack(alignment:.leading,spacing: 30) {
                if filteredStores.isEmpty {
                    Text("Nenhum resultado encontrado")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.colorRed)
                        .padding(.vertical,32)
                        .frame(maxWidth: .infinity)
                } else {
                    ForEach(filteredStores) { mock in
                        NavigationLink {
                            StoreDetailView(store: mock)
                        } label: {
                            StoreItemView(storeType: mock)
                        }
                        
                        
                    }
                }
            }
            .foregroundStyle(.black)
        }
        .padding(20)
    }
}

#Preview {
    StoresContainerView(stores: storesMock)
}
