//
//  WishlistView.swift
//  Air_BnB_Clone
//
//  Created by Dev on 24/08/24.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment:.leading,spacing: 32){
                
                VStack(alignment:.leading,spacing: 4){
                    Text("Log In to view your wishlist")
                        .font(.headline)
                        
                    Text("You can create,view or edit wishlist once you've logged in")
                        .font(.footnote)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Login In")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360,height: 48)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
//                    .padding()
                    Spacer()
                }
            }.padding()
            .navigationTitle("Wishlists")
        }
       
    }
}

#Preview {
    WishlistView()
}
