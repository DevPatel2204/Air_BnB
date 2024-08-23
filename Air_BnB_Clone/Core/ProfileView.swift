//
//  ProfileView.swift
//  Air_BnB_Clone
//
//  Created by Dev on 24/08/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack(alignment:.leading,spacing: 32){
                VStack(alignment:.leading,spacing: 10){
                    Text("Profile")
                        .fontWeight(.semibold)
                    .font(.largeTitle)
                    
                    Text("Login to start planning your next trip")
                }
                
                    
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
                
                HStack{
                    Text("Don't have a account??")
                    
                    Text("Sign Up")
                        .fontWeight(.semibold)
                        .underline()
                }.font(.caption)
            }
            
            VStack(spacing:25){
                rowOptional(imageName: "gear", tittle: "Settings")
                rowOptional(imageName: "gear", tittle: "Accesiblity")
                rowOptional(imageName: "questionmark.circle", tittle: "Visit the help center")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
