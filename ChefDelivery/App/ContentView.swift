//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 13/12/23.
//

import SwiftUI

struct ContentView: View {
    private var service = HomeService()
    @State private var storesType: [StoreType] = []
    @State private var isloading = true
    var body: some View {
        NavigationStack {
            VStack {
                if isloading {
                    ProgressView()
                } else {
                    NavigationBarView()
                        .padding(.horizontal,15)
                    ScrollView(.vertical,showsIndicators: false) {
                        VStack(spacing: 20) {
                            OrderTypeGridView()
                            CarouselTabView()
                            StoresContainerView(stores: storesType)
                        }
                    }
                }
            }
        }
        .onAppear {
            Task {
                await getStores()
            }
        }
        
    }
    // MARK: -- METHODS
    func getStores() async {
        do {
            let result = try await service.fetchData()
            switch result {
            case .success(let stores):
                self.storesType = stores
                self.isloading = false
            case .failure(let error):
                print(error.localizedDescription)
                self.isloading = false
            }
        } catch {
            print(error.localizedDescription)
            self.isloading = false
        }
    }

}

#Preview {
    ContentView()
}
