//
//  CarouselItemView.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 13/12/23.
//

import SwiftUI

struct CarouselItemView: View {
    let orderType: OrderType
    var body: some View {
        Image(orderType.image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    CarouselItemView(orderType: OrderType(id: 1, name: "ANY", image: "barbecue-banner"))
}
