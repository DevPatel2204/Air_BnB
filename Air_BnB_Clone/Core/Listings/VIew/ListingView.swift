//
//  ListingView.swift
//  Air_BnB_Clone
//
//  Created by Dev Patel on 08/08/24.
//

import SwiftUI

struct ListingView: View {
    var body: some View {
        VStack{
            listingCarosalView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .tabViewStyle(.page)
//                .padding()
            
            HStack(alignment:.top){
                VStack(alignment:.leading){
                    Text("Miami , Florida")
                        .foregroundStyle(.black)
                    Text("15 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10 ")
                        .foregroundStyle(.gray)
                    
                    Text("$350  ")
                        .bold()
                    +
                    Text("night")
                }.font(.system(size: 15))
                    .foregroundStyle(.black)
                
                Spacer()
                
                HStack(spacing:2){
                    Image(systemName: "star.fill")
                    
                    Text("4.98")
                }.foregroundStyle(.black)
            }
            
        }
        .padding()
        
    }
}

#Preview {
    ListingView()
}
