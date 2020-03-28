//
//  SignUpView.swift
//  EMM
//
//  Created by Evan Tilley on 3/27/20.
//  Copyright © 2020 Jason Cardinale. All rights reserved.
//

import SwiftUI
import Firebase

struct SignUpView: View {
    let db = Firestore.firestore()
    @State var name: String = ""
    @State var email: String = ""
    @State var username: String = ""
    @State var password: String = ""
    @State var loginSuccess = false
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var body: some View {
            ZStack{
                Color(red: 0, green: 255, blue: 188)
                .edgesIgnoringSafeArea(.all)
                VStack{
                    
                    Text("EMM")
                    .font(.system(size: width * 0.1))
                    .foregroundColor(Color(red: 51/255, green: 33/255, blue: 142/255))
                    
                    VStack{
                        if (donator){
                            Text("Thanks for donating! We rely on people like you!")
                                .frame(height: height * 0.15)
                             .foregroundColor(Color(red: 51/255, green: 33/255, blue: 142/255))
                            .font(.system(size: width * 0.06))
                            .padding()
                                .padding(.top, height * 0.05)
                                .offset(y: height * 0.03)


                        }
                        if (requester){
                            Text("We will do our best to connect you to people who can meet your needs.")
                                .frame(height: height * 0.15)
                            .foregroundColor(Color(red: 51/255, green: 33/255, blue: 142/255))
                            .font(.system(size: width * 0.06))
                            .padding(.top, height * 0.05)
                        }
//                        else{
//                            Text("Placeholder text")
//                            .foregroundColor(Color(red: 51/255, green: 33/255, blue: 142/255))
//                            .font(.system(size: width * 0.06))
//                            .padding()
//                            .padding(.top, height * 0.05)
//
//                        }
                    }
                    
                    NavigationLink(destination: DonatorSetupView(), isActive: $loginSuccess){
                        EmptyView()
                    }
                    
                    VStack(alignment: .leading, spacing: 0){
                        Text("Full Name:")
                            .font(.system(size: width * 0.09))
                            .padding(.bottom, 0)
                            .foregroundColor(Color(red: 51/255, green: 33/255, blue: 142/255))
                        TextField("Enter Full Name...", text: $name)
                        .font(.system(size: width * 0.06))
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                        
                    }.padding([.leading, .trailing], 10)
                    
                    VStack(alignment: .leading, spacing: 0){
                        Text("Email:")
                            .font(.system(size: width * 0.09))
                            .padding(.bottom, 0)
                        .foregroundColor(Color(red: 51/255, green: 33/255, blue: 142/255))
                        TextField("Enter Email...", text: $email)
                        .font(.system(size: width * 0.06))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                    }.padding([.leading, .trailing], 10)
                    
                    VStack(alignment: .leading, spacing: 0){
                        Text("Username:")
                            .font(.system(size: width * 0.09))
                            .padding(.bottom, 0)
                        .foregroundColor(Color(red: 51/255, green: 33/255, blue: 142/255))
                        TextField("Enter Username...", text: $username)
                        .font(.system(size: width * 0.06))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                    }.padding([.leading, .trailing], 10)
                    VStack(alignment: .leading, spacing: 0){
                        Text("Password:")
                            .font(.system(size: width * 0.09))
                            .padding(.bottom, 0)
                        .foregroundColor(Color(red: 51/255, green: 33/255, blue: 142/255))
                        SecureField("Enter Password...", text: $password)
                        .font(.system(size: width * 0.06))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                    }.padding([.leading, .trailing], 10)
                    


                    VStack{
                        Button(action: {
                            //also need to check if already exists
                            //in database
                            Auth.auth().createUser(withEmail: self.email, password: self.password) { (result, error) in
                                if error != nil{
                                    print(error?.localizedDescription ?? "error")
                                } else{
                                    var type = ""
                                    if (donator){
                                        type = "Donator"
                                    } else{
                                        type = "Requester"
                                    }
                                    let newUserDictionary: [String: Any] = ["username": self.username, "email": self.email, "name": self.name, "type": type, "ID": result!.user.uid]
                                    let messageRef = self.db
                                        .collection("Users").document("Users").collection("Users")
                                    messageRef.document(self.username).setData(newUserDictionary) { err in
                                        if let err = err {
                                            print("Error writing document: \(err)")
                                        } else {
                                            print("Document successfully written!")
                                            self.loginSuccess = true
                                        }
                                    }
                                }
                            }

                        })
                        {
                            Text("Submit")
                                .padding([.leading, .trailing], width * 0.3)
                                .padding([.top, .bottom], height * 0.02)
                                .background(Color(red: 0/255, green: 255/255, blue: 196/255))
                            .cornerRadius(30)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 30)
                                        .stroke(Color(red: 0/255, green: 156/255, blue: 213/255), lineWidth: 5)
                                )
                                .foregroundColor(Color.white)
                                .font(.system(size: width * 0.095, weight: .heavy, design: .default))
                        }
                        .padding(.bottom, height * 0.1)
                        Spacer()
                            .frame(height: 100)
                        
                    }
                }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
