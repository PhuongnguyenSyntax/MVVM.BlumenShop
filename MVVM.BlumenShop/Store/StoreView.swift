//
//  StoreView.swift
//  MVVM.BlumenShop
//
//  Created by Flama Henkel on 03.02.24.
//

import SwiftUI

struct StoreView: View {
    
    @StateObject private var storeViewModel = StoreViewModel()
    @StateObject private var cartViewModel = CartViewModel()
    
    @State var shouldShowCart = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing:20) {
                ScrollView(showsIndicators: false) {
                    VStack(spacing:15) {
                        ForEach(storeViewModel.products) { product in
                            StoreItemView(product: product)
                                .padding(.horizontal, 20)
                            
                        }
                        .environmentObject(cartViewModel)
                    }
                }
                CartButton(cartViewModel: cartViewModel) {
                    shouldShowCart.toggle()
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
            }
            .navigationTitle("Store")
            .sheet(isPresented: $shouldShowCart) {
                CartView(cartViewModel: cartViewModel)
          }
        }
    }
}

#Preview {
    StoreView()
}
