//
//  StoreViewModel.swift
//  MVVM.BlumenShop
//
//  Created by Flama Henkel on 03.02.24.
//

import Foundation

class StoreViewModel: ObservableObject {
    
    @Published var products = [Product]()
    
    init(){
        fetchProducts()
    }
    
    private func fetchProducts() {
        self.products = Products.products
    }
    
}
