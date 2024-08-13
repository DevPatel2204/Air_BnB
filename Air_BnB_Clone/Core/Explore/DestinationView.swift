//
//  searchBar.swift
//  Air_BnB_Clone
//
//  Created by Dev Patel on 11/08/24.
//

import SwiftUI

struct DestinationView: View {
    @Binding var show:Bool
    @State private var destination = ""
    var body: some View {
        // Back button
        VStack{
            Button(action: {
                withAnimation(.snappy){
                    show.toggle()
                }
            }, label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            })
        }
        
        VStack(alignment:.leading){
            Text("Where to?")
                .font(.title2)
                .fontWeight(.semibold)
            HStack{
                Image(systemName: "magnifyingglass")
                    .imageScale(.small)
                    .fontWeight(.semibold)
                
                TextField("Search Destination", text: $destination)
            }
            //            .padding()
            .frame(height: 44)
            .padding(.horizontal)
            .overlay{
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1.0)
                    .foregroundStyle(.gray)
            }
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        //        .padding()
        .shadow(radius: 10)
        .padding()
        
        // Date Selection
        date_guests(title: "When", description:"Add dates")
        //Guest Selection
        date_guests(title: "Who", description: "Add guest")
    }
}


#Preview {
    DestinationView(show:.constant(false))
}
// Code made to reuse as a struct 
struct date_guests:View {
    let title:String
    let description:String
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
                
            }.font(.subheadline)
                .fontWeight(.semibold)
        }   .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        //        .padding()
            .shadow(radius: 10)
            .padding()
        
    }
}
