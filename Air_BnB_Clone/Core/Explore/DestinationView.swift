//
//  searchBar.swift
//  Air_BnB_Clone
//
//  Created by Dev Patel on 11/08/24.
//

import SwiftUI
enum DestinationSearchOptions{
    case location
    case dates
    case guests
}
struct DestinationView: View {
    @Binding var show:Bool
    @State private var destination = ""
    @State private var selectedoption:DestinationSearchOptions = .location
    @State private var fromdate = Date()
    @State private var todate = Date()
    @State private var num_guest = 0
    var body: some View {
        // Back button
        VStack(spacing:30){
            HStack {
                Button(action: {
                    withAnimation(.snappy){
                        show.toggle()
                    }
                }, label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
            })
                Spacer()
                Button(action: {
                    if !destination.isEmpty{
                        destination = ""
                    }
                }, label: {
                    Text("Clear")
                })
                .foregroundStyle(.black)
                .font(.subheadline)
                .fontWeight(.semibold)
            }
            // Automatically clear button when we type is not working
            .padding()
//        } First Vstack closing bracket was here if error in future redo this closing bracket
            
            VStack(alignment:.leading){
                if selectedoption == .location{
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                            .fontWeight(.semibold)
                        
                        TextField("Search Destination", text: $destination)
                    }
                    
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(.gray)
                    }
                }else{
                    date_guests(title: "Where", description:"Add destination")
                }
            }
            .modifier(reusablemodifier())
            .frame(height: selectedoption == .location ? 120 : 64)
//            .padding()
//            .background(.white)
//            .clipShape(RoundedRectangle(cornerRadius: 12))
//            //        .padding()
//            .shadow(radius: 10)
//            .padding()
            .onTapGesture {
                withAnimation(.snappy){selectedoption = .location}
            }
            VStack(alignment:.leading){
                if selectedoption == .dates{
                    Text("When's Your Trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack{
                        DatePicker("From", selection: $fromdate, displayedComponents: .date)
                        Divider()
                        DatePicker("To", selection: $todate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                }else{
                    date_guests(title: "When", description:"Add dates")
                }
            }
            .modifier(reusablemodifier())
            .frame(height: selectedoption == .dates ? 180 : 64)
            // Date Selection
            .onTapGesture {
                withAnimation(.snappy){selectedoption = .dates}
            }
            
            VStack{
                if selectedoption == .guests{
                    Text("How many Guest's")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Stepper("\(num_guest) Adults") {
                        num_guest += 1
                    } onDecrement: {
                        guard num_guest > 0 else{return}
                        num_guest -= 1
                    }
  
                }
                else{
                    date_guests(title: "Who", description: "Add guest")
                }
            }
            .modifier(reusablemodifier())
            .frame(height: selectedoption == .guests ? 120 : 64)
            //Guest Selection
            .onTapGesture {
                withAnimation(.snappy){selectedoption = .guests}
            }
        }
        Spacer()
    }
}

#Preview {
    DestinationView(show:.constant(false))
}

struct reusablemodifier:ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            
            
    }
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
        }

        
    }
}
