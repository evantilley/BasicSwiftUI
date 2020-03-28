//
//  FirstViewv2.swift
//  EMM
//
//  Created by Evan Tilley on 3/27/20.
//  Copyright © 2020 Jason Cardinale. All rights reserved.
//

import SwiftUI
var donator = false
var requester = false

struct FirstView: View {
    @State var signUpView = false
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var body: some View {
        //SHOULD MAKE BUTTON THAT TAKES YOU TO OUR MISSION STATEMENT
        //IT WILL BE NUTTER
        NavigationView{
            ZStack{
            Color(red: 0, green: 255, blue: 188)
            .edgesIgnoringSafeArea(.all)
                
                VStack{
                    NavigationLink(destination: SignUpView(), isActive: self.$signUpView){
                        EmptyView()
                    }
                    Text("EMM")
                        .font(.system(size: width * 0.2))
                        .foregroundColor(Color(red: 51/255, green: 33/255, blue: 142/255))
                    Spacer()
                    Text("\"Because every mask matters\"")
                        .font(.system(size: width * 0.06))
                        .foregroundColor(Color(red: 51/255, green: 33/255, blue: 142/255))
                    Spacer()
                    //NEED TO MAKE THIS CUSTOM LOGO
                    Image("medical-mask")
                    .resizable()
                    .frame(width: width * 0.5, height: height * 0.2)

                    Spacer()
                        .frame(height: height * 0.1)
                    
                    Text("Are you planning on Donating \n or Requesting Supplies?")
                        .font(.system(size: width * 0.055))
                        .foregroundColor(Color(red: 51/255, green: 33/255, blue: 142/255))
                        .offset(y: height * -0.1)
                    Spacer()
                    VStack{
                        Button(action: {
                            donator = true
                            requester = false
                            self.signUpView = true
                            
                        })
                        {
                            Text("Donate")
                                .padding([.leading, .trailing], width * 0.15)
                                .padding([.top, .bottom], height * 0.02)
                                .background(Color(red: 0/255, green: 255/255, blue: 196/255))
                            .cornerRadius(30)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 30)
                                        .stroke(Color(red: 0/255, green: 156/255, blue: 213/255), lineWidth: 5)
                                )
                                .foregroundColor(Color.white)
                                .font(.system(size: width * 0.10))
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            requester = true
                            donator = false
                            self.signUpView = true

                        })
                        {
                            Text("Request")
                                .padding([.leading, .trailing], width * 0.15)
                                .padding([.top, .bottom], height * 0.02)
                                .background(Color(red: 0/255, green: 255/255, blue: 196/255))
                            .cornerRadius(30)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 30)
                                        .stroke(Color(red: 0/255, green: 156/255, blue: 213/255), lineWidth: 5)
                                )
                                .foregroundColor(Color.white)
                                .font(.system(size: width * 0.10))
                            }
                    }
                }.padding(.bottom, height * 0.1)

            }
        }
    .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}

