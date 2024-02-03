//
//  Product.swift
//  MVVM.BlumenShop
//
//  Created by Flama Henkel on 03.02.24.
//

import Foundation

struct Product: Identifiable {
    var id = UUID().uuidString
    var image: String
    var title: String
    var price: Double
}
