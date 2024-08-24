//
//  listingDetailView.swift
//  Air_BnB_Clone
//
//  Created by Dev Patel on 10/08/24.
//

import SwiftUI
import MapKit

struct listingDetailView: View {
    @Environment (\.dismiss) var dismiss
    var body: some View {
        ScrollView{
            ZStack(alignment:.topLeading){
                listingCarosalView()
                    .frame(height: 320)
                    
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32,height: 32)
                        }
                        .padding(45)
                })
            }
            VStack(alignment:.leading){
                Text("Miami Villa")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                VStack {
                    HStack(spacing:2){
                        Image(systemName: "star.fill")
                        
                        Text("4.98")
                        
                        Text("-")
                        
                        Text("30 Reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }.foregroundStyle(.black)
                    Text("Miami , Florida")
                }.font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity,alignment: .leading)
            
            Divider()
            
            HStack(spacing:4){
                VStack(alignment:.leading){
                    Text("White House Hosted by Donald Trump")
                        .font(.headline)
                        .frame(width: 250,alignment: .leading)
                    HStack(spacing:3){
                        Text("4 Guest -")
                        Text("4 bedrooms -")
                        Text("4 bed -")
                        Text("4 baths ")
                    }
                    .font(.caption)
                }.frame(width:300,alignment: .leading)
                Spacer()
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70,height: 70)
                    .clipShape(Circle())
                //                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                
            }
            .padding()
            
            Divider()
            
            //listing features
            
            VStack(alignment:.leading,spacing: 16){
                ForEach(0 ..< 2){ feature in
                    HStack(spacing:12){
                        Image(systemName: "medal")
                        
                        VStack(alignment:.leading){
                            Text("Featues")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Here all the features are listed and user can see the features")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }
            //.frame(maxWidth: .infinity,alignment: .leading)
            .padding()
            
            Divider()
            VStack(alignment:.leading,spacing: 16){
                Text("Where you'll sleep")
                    .font(.headline)
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:16){
                        ForEach(1 ..< 6){ bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132,height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke()
                                    .foregroundStyle(.gray)
                            }
                        }
                        
                    }
                }
                //.scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            VStack(alignment:.leading , spacing: 16){
                Text("What place offer's")
                    .font(.headline)
                
                ForEach(0 ..< 5) { feature in
                    HStack{
                        Image(systemName: "wifi")
                            .frame(width:32)
                        Text("Wifi")
                            .font(.footnote)
                        Spacer()
                    }
                }
            }
            .padding(30)
            
            VStack(alignment:.leading,spacing:16){
                Text("Where you'll be")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding()
            }
            .padding()
            .padding(.bottom,30)
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom,65)
        .overlay(alignment:.bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                HStack{
                    VStack(alignment:.leading){
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                            .font(.footnote)
                        Text("Oct - 20 - 25")
                            .font(.footnote)
                            .underline()
                            .fontWeight(.semibold)
                    }
                    Spacer()
                    Button(action: {
                        // can book the hpuse or take to payment page
                    }, label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140,height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                }
                .padding(.horizontal,32)
                .padding(15)
            }
            .background(.white)
        }
//        .ignoresSafeArea()
    }
}

#Preview {
    listingDetailView()
}
