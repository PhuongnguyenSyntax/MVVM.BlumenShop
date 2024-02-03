//
//  CartViewModel.swift
//  MVVM.BlumenShop
//
//  Created by Flama Henkel on 03.02.24.
//

import Foundation
class CartViewModel: ObservableObject {
    
    @Published var products = [Product] ()
    
    // Funktion zum Hinzufügen eines Produkts zum Warenkorb.
    func addToCart(_ product: Product) {
        products.append(product)
    }
    
    
    // Funktion zum Entfernen eines Produkts aus dem Warenkorb.
    func removeFromCart(_ product: Product) {
        
        // Überprüfen, ob das Produkt im Warenkorb vorhanden ist, und es entfernen, falls gefunden.
        guard let index = products.firstIndex(where: { $0.id == product.id }) else { return }
        products.remove(at: index)
    }
    
    // Funktion zum Überprüfen, ob ein Produkt bereits im Warenkorb enthalten ist.
    func containsItem(_ product: Product) -> Bool {
        
        // Überprüfen, ob ein Produkt mit der gleichen ID im Warenkorb vorhanden ist.
        products.contains(where: {$0.id == product.id})
    }
}
