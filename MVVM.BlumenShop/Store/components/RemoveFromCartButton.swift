//
//  RemoveFromCartButton.swift
//  MVVM.BlumenShop
//
//  Created by Flama Henkel on 03.02.24.
//

import SwiftUI

struct RemoveFromCartButton: View {
    
    let action: () -> Void
    
    var body: some View {
        
        
        Button(action: action) {
            Image(systemName: "trash")
                .font(.headline)
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(Capsule())
        }
    }
}

#Preview {
    RemoveFromCartButton(action: {})
}
