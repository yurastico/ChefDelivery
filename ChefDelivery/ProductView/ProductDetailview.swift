//
//  ProductDetailview.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 14/12/23.
//

import SwiftUI

struct ProductDetailview: View {
    @State private var quantity = 1
    let service = HomeService()
    
  
    
    let product: ProductType
    var body: some View {
        VStack {
            ProductDetailHeaderView(product: product)
            Spacer()
            ProductDetailQuantityView(quantity: $quantity)
            Spacer()
            ProductDetailButton {
                Task {
                    await confirmOrder()
                }
            }
        }
    }
    private func confirmOrder() async {
        do {
            let result = try await service.confirmOrder(product: product)
            switch result {
            case .success(let message):
                print(message)
            case .failure(let error):
                print(error.localizedDescription)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}

#Preview {
    ProductDetailview(product: storesMock[0].products[0])
}

struct ProductDetailButton: View {
    var onButtonPress: () -> Void
    var body: some View {
        Button {
            onButtonPress()
        } label: {
            HStack {
                Image(systemName: "cart")
                
                Text("Enviar pedido")
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
