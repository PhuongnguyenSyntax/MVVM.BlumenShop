//
//  CartButton.swift
//  MVVM.BlumenShop
//
//  Created by Flama Henkel on 03.02.24.
//

import SwiftUI

struct CartButton: View {
    
    @ObservedObject var cartViewModel: CartViewModel
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            HStack(spacing:10) {
                Text("Warenkorb")
                
                if !cartViewModel.products.isEmpty {
                    Text("\(cartViewModel.products.count)")
                }
            }
            .frame(maxWidth: .infinity)
            .font(.headline)
            .padding(.vertical, 10)
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(10)
        }
    }
}

#Preview {
    CartButton(cartViewModel: CartViewModel(), action: {})
}
