//
//  CartItemView.swift
//  MVVM.BlumenShop
//
//  Created by Flama Henkel on 03.02.24.
//

import SwiftUI

struct CartItemView: View {
    
    let product: Product
    
    var body: some View {
        
        HStack {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            Text(product.title)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(product.price, format: .currency(code: "EUR"))
        }
        .font(.headline)
    }
}

#Preview {
    CartItemView(product: Product(image: "5", title: "Geschteck", price: 12))
}
