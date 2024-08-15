//
//  signUppage.swift
//  Air_BnB_Clone
//
//  Created by Dev on 13/08/24.
//

import SwiftUI

struct signUppage: View {
    @State private var email = ""
    @State private var password = ""
    @State private var name = ""
    @State private var number:String = ""
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color(red: 245/255, green: 75/255, blue: 56/255)
                VStack{
                    Image("airbnb")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .foregroundStyle(.white)
                    
                    Text("Welcome on Airbnb")
                        .foregroundStyle(.white)
                        .padding()
                    
                    VStack{
                        VStack{
                            
                            TextField("", text: $name, prompt: Text("Name")
                                .foregroundStyle(.gray)
                                .font(.system(size: 16,weight: .light,design: .rounded))
                            )
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .padding(.horizontal)
                            
                            .padding(.bottom)
                            
                            TextField("", text: $number, prompt: Text("Phone No")
                                .foregroundStyle(.gray)
                                .font(.system(size: 16,weight: .light,design:.rounded))
                            )
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .padding(.horizontal)
                            
                            .padding(.bottom)
                            
                            TextField(
                                "",
                                text: $email,
                                prompt:Text("E-Mail")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .light, design: .rounded))
                            )
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .padding(.horizontal)
                            
                            .padding(.bottom)
                            
                            SecureField(
                                "",
                                text: $password,
                                prompt:Text("Password")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .light, design: .rounded))
                            )
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .padding(.horizontal)
                        }.padding(.vertical,50)
                        
                        
                        Button(action: {
                            // Click to SignUp
                        }, label: {
                            Text("Sign Up")
                        })
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 180,height: 40)
                        .overlay{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(.white,lineWidth: 1.0)
                            
                        }
                        NavigationLink(destination: loginPage()) {
                            Text("Already have an Acoount?")
                                .foregroundStyle(.white)
                                .padding(.top)
                        }
                    }
                }
                
            }.ignoresSafeArea()
                .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    signUppage()
}

//struct login:View {
//    let user_name = ""
//    let user_mail = ""
//    let user_details = ""
//    //let user_pass = ""
//    //let user_number = ""
//    var body: some View {
//        TextField(
//            "",
//            text: ,
//            prompt:Text("E-Mail")
//                .foregroundColor(.gray)
//                .font(.system(size: 16, weight: .light, design: .rounded))
//        )
//        .padding()
//        .background(Color(.systemGray6))
//        .cornerRadius(8)
//        .padding(.horizontal)
//        
//        .padding(.bottom)
//        
//    }
//}
