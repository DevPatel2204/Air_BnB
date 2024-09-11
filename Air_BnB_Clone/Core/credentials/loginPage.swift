//
//  loginPage.swift
//  Air_BnB_Clone
//
//  Created by Dev on 13/08/24.
//

import SwiftUI
import FirebaseAuth
import Firebase


struct loginPage: View {
    @State private var email:String = ""
    @State private var password = ""
    @State private var errorMessage = ""
    @State private var isSignedIn = false
    var body: some View {
        NavigationStack{
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
                        VStack {
                            TextField("",
                                      text: $email,
                                      prompt:Text("E-Mail")
                                .foregroundColor(.gray)
                                .font(.system(size: 16, weight: .light, design: .rounded))
                            )
                            .textInputAutocapitalization(.never)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .padding(.horizontal)
                            
                            .padding(.bottom)
                            
                            SecureField("",
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
                            signIn()
                        }, label: {
                            Text("Login")
                        })
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 180,height: 40)
                        .overlay{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(.white,lineWidth: 1.0)
                        }
                        NavigationLink(destination: signUppage()) {
                            Text("Don't have an Acoount?")
                                .foregroundStyle(.white)
                                .padding(.top)
                        }
                        if !errorMessage.isEmpty {
                            Text(errorMessage)
                                .foregroundColor(.black)
                                .padding()
                        }
                        
                        if isSignedIn {
                            Text("Signed in successfully!")
                                .foregroundColor(.green)
                                .padding()
                        }
                    }
                }
                
                
            }.ignoresSafeArea()
                .navigationBarBackButtonHidden(true)
        }
        
    }
    
    func signIn() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                errorMessage = error.localizedDescription
                print(error)
            } else {
                isSignedIn = true
            }
        }
    }

}

#Preview {
    loginPage()
}


