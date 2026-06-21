//
//  ShopHomeView.swift
//  Navigation
//
//  Created by Rushh on 21/06/26.
//

import SwiftUI

struct ShopHomeView: View {
    @Environment(ShopRouter.self) private var router
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Shop Home")
                .font(.title)
            
            Button("Buy Macbook Pro M5") {
                router.push(to: .productDetail(id: "MAC_M5_PRO"))
            }
            .buttonStyle(.borderedProminent)
            
            Button("Go directly to Checkout") {
                router.push(to: .checkout)
            }
        }
        .navigationTitle("Shop")
    }
}

#Preview {
    ShopHomeView()
}
