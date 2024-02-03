//
//  StoreItemView.swift
//  MVVM.BlumenShop
//
//  Created by Flama Henkel on 03.02.24.
//

import SwiftUI

struct StoreItemView: View {
    
    @EnvironmentObject private var cartViewModel: CartViewModel
    let product: Product
    
    var body: some View {
        VStack(spacing: 15) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            HStack {
                Text(product.title)
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                if cartViewModel.containsItem(product) {
                    RemoveFromCartButton(action: removeFromCart)
                } else {
                    AddToCartButton(price: product.price, action: addToCart)
                }
            }
        }
        .padding(.top, 10)
        .padding([.horizontal, .bottom], 20)
        .background(.gray.opacity(0.1))
        .cornerRadius(25)
        
        
    }
    private func removeFromCart() {
        withAnimation {
            cartViewModel.removeFromCart(product)
        }
    }
    
    private func addToCart(){
        withAnimation {
            cartViewModel.addToCart(product)
        }
    }
}

#Preview {
    StoreItemView(product: Product(image: "5", title: "Geschteck", price: 14.99))
}
