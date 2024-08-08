//
//  Search_FilterBar.swift
//  Air_BnB_Clone
//
//  Created by Dev Patel on 08/08/24.
//

import SwiftUI

struct Search_FilterBar: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            
            VStack(alignment:.leading,spacing: 2){
                Text("Where to?")
                    .font(.footnote)
                    .foregroundStyle(.black)
                Text("Anywhere - Anytime - With Guest")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            Spacer()
            Button(action: {
                
            }, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical,15)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(.gray)
                .shadow(color: .black.opacity(0.5),radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}

#Preview {
    Search_FilterBar()
}
