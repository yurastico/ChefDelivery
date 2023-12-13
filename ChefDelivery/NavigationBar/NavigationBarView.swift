//
//  NavigationBarView.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 13/12/23.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack {
            Spacer()
            Button("R. Vergueiro, 3185") {
                
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.black)
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundStyle(.red)
            }
        }
    }
}

#Preview {
    NavigationBarView()
}
