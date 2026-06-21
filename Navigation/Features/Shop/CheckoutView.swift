//
//  CheckoutView.swift
//  Navigation
//
//  Created by Rushh on 21/06/26.
//

import SwiftUI

struct CheckoutView: View {
    @Environment(ShopRouter.self) private var router
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Checkout Screen")
                .font(.title)
            
            Button("Complete Order & Go Home") {
                router.popToRoot()
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
        .navigationTitle("Checkout")
    }
}

#Preview {
    CheckoutView()
}
