//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 13/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationBarView()
                    .padding(.horizontal,15)
                ScrollView(.vertical,showsIndicators: false) {
                    VStack(spacing: 20) {
                        OrderTypeGridView()
                        CarouselTabView()
                        StoresContainerView()
                    }
                }
            }
        }
        .onAppear {
            fetchData()
        }
        
    }
    // MARK: -- METHODS
    private func fetchData() {
        let stringURL = "https://private-7815e6-vollmed.apiary-mock.com/"
        guard let url = URL(string: stringURL) else { return }
        
        URLSession.shared.dataTask(with: url) {data,_,error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            if let data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data) as? [[String: Any]]
                } catch {
                    print(error.localizedDescription)
                }
                
            }
            
        }
        .resume()
    }
}

#Preview {
    ContentView()
}
