//
//  ProductDetailView.swift
//  Navigation
//
//  Created by Rushh on 21/06/26.
//

import SwiftUI

struct ProductDetailView: View {
    let productId: String
    @Environment(ShopRouter.self) private var router
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Viewing Product:")
            Text(productId)
                .font(.headline)
            
            Button("Proceed to Checkout") {
                router.push(to: .checkout)
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Details")
    }
}

#Preview {
    ProductDetailView(productId: "10")
}
