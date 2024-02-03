//
//  CartView.swift
//  MVVM.BlumenShop
//
//  Created by Flama Henkel on 03.02.24.
//

import SwiftUI

struct CartView: View {
    
    @ObservedObject var cartViewModel: CartViewModel
    
    var body: some View {
        NavigationStack {
            Group {
                if cartViewModel.products.isEmpty {
                    VStack {
                        Image(systemName: "cart.circle")
                            .font(.largeTitle)
                        Text("Dein Warenkorb ist leer!")
                            .font(.body)
                    }
                    
                } else {
                    
                    List(cartViewModel.products) { product in
                        CartItemView(product: product)
                            .swipeActions{
                                Button(role: .destructive){
                                    cartViewModel.removeFromCart(product)
                                } label: {
                                    Label("Entfernen", systemImage: "trash")
                                }
                            }
                    }
                    
                }
            }
            .navigationTitle("Warenkorb")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    CartView(cartViewModel: CartViewModel())
}
