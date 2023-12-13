//
//  OrderTypeView.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 13/12/23.
//

import SwiftUI

struct OrderTypeView: View {
    let orderType: OrderType
    var body: some View {
        VStack(spacing: 5) {
            Image(orderType.image)
                .resizable()
                .scaledToFit()
                .fixedSize(horizontal: false, vertical: true)
            Text(orderType.name)
                .font(.system(size: 10))
        }
        .frame(width: 70,height: 100)
    }
}

#Preview {
    OrderTypeView(orderType: ordersMock[0])
}
