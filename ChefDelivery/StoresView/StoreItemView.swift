//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 13/12/23.
//

import SwiftUI

struct StoreItemView: View {
    let orderType: OrderType
    var body: some View {
        HStack {
            Image(orderType.image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .frame(width: 50,height: 50)
            VStack {
                Text(orderType.name)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}

#Preview {
    StoreItemView(orderType: ordersMock[0])
}
