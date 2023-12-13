//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 13/12/23.
//

import SwiftUI

struct OrderTypeGridView: View {
    
    let orders = ordersMock
    
    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(),spacing: 10), count: 2)
    }
    
    var body: some View {
        LazyHGrid(rows: gridLayout,spacing: 15) {
            ForEach(orders) { order in
                OrderTypeView(orderType: order)
            }
            
        }
        .frame(height: 200)
        .padding(.horizontal,15)
        .padding(.top,15)
    }
}

#Preview {
    OrderTypeGridView()
}


