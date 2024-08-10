//
//  ExploreView.swift
//  Air_BnB_Clone
//
//  Created by Dev Patel on 08/08/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                Search_FilterBar()
                LazyVStack(spacing:30){
                    ForEach(0 ... 10 , id: \.self){listing in
                        NavigationLink(value: listing) {
                            ListingView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                        }
                    }
                }
                //.padding()
            }
            .padding()
            .navigationDestination(for: Int.self) {listing in
                listingDetailView()
                    .navigationBarBackButtonHidden(true)
            }
        }
    }
}

#Preview {
    ExploreView()
}
