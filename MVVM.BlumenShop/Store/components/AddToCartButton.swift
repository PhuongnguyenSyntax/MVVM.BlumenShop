//
//  AddToCartButton.swift
//  MVVM.BlumenShop
//
//  Created by Flama Henkel on 03.02.24.
//

import SwiftUI

struct AddToCartButton: View {
    
    let price: Double
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 5) {
                Image(systemName: "cart.fill")
                Text(price, format: .currency(code: "EUR"))
            }
            .font(.headline)
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
            
        }
    }
}

#Preview {
    AddToCartButton(price: 12, action: {})
}
