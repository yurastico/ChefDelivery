//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 13/12/23.
//

import SwiftUI

struct StoresContainerView: View {
    let title = "Lojas"
    var body: some View {
        VStack(alignment: .leading)  {
            
            Text(title)
                .font(.headline)
            Spacer()
            VStack(alignment:.leading,spacing: 30) {
                ForEach(storesMock) { mock in
                    StoreItemView(orderType: mock)
                }
            }
        }
        .padding(20)
    }
}

#Preview {
    StoresContainerView()
}
