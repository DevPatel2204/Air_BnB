//
//  ExploreView.swift
//  Air_BnB_Clone
//
//  Created by Dev Patel on 08/08/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationView = false
    var body: some View {
        ZStack {
            NavigationStack{
                if showDestinationView {
                    DestinationView(show: $showDestinationView)
                }else{
                    ScrollView{
                        Search_FilterBar()
                            .onTapGesture {
                                withAnimation(.snappy){
                                    showDestinationView.toggle()
                                }
                            }
                        LazyVStack(spacing:30){
                            ForEach(0 ... 10 , id: \.self){listing in
                                NavigationLink(value: listing) {
                                    ListingView()
                                        .frame(height: 400)
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                }
                            }
                        }
                    }
                    .navigationDestination(for: Int.self) {listing in
                        listingDetailView()
                            .navigationBarBackButtonHidden(true)
                    }
                }
                
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    ExploreView()
}
