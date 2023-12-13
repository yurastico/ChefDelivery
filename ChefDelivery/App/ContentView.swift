//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 13/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBarView()
                .padding(.horizontal,15)
            ScrollView(.vertical,showsIndicators: false) {
                VStack(spacing: 20) {
                    OrderTypeGridView()
                    CarouselTabView()
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
