//
//  LogoView.swift
//  Touchdown
//
//  Created by kirshi on 6/1/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack {
            Text("Touch".uppercased())
                .foregroundColor(.black)
                .font(.title3)
            .fontWeight(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down".uppercased())
                .foregroundColor(.black)
                .font(.title3)
                .fontWeight(.black)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
