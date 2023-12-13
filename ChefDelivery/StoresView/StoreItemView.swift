//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 13/12/23.
//

import SwiftUI

struct StoreItemView: View {
    let storeType: StoreType
    var body: some View {
        HStack {
            Image(storeType.logoImage)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .frame(width: 50,height: 50)
            VStack {
                Text(storeType.name)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}

#Preview {
    StoreItemView(storeType: storesMock[0])
}
