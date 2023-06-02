//
//  ProductDetialVIew.swift
//  Touchdown
//
//  Created by kirshi on 6/2/23.
//

import SwiftUI

struct ProductDetialVIew: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            NavigationBarDetialView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            ProductDetailView()
                .padding(.horizontal)
            
            TopPartDetialView()
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0) {
                
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? products[0].description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
                Spacer()
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(
                        CustomShape()
                    )
                    .padding(.top, -105)
            )
            .zIndex(0)
            
            
            Spacer()
        }
        .ignoresSafeArea(.all, edges: .all)
        .background(shop.selectedProduct?.formattedColor ?? products[0].formattedColor)
    }
}

struct ProductDetialVIew_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetialVIew()
            .environmentObject(Shop())
    }
}
