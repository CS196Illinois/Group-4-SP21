//
//  Signup.swift
//  Travel App
//
//  Created by Cooper Miller on 3/18/21.
//

import SwiftUI

struct SignUp : View {
    
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var password = ""
    @State var repassword = ""
    @State var country = ""
    @State var currency = ""
    @State var locale = ""
    @State var originPlace = ""
    @State var destinationPlace = ""
    @State var outboundPartialDate = ""
    @State var inboundPartialDate = ""
    @State var visible = false
    @State var revisible = false
    @Binding var show : Bool
    
    var body : some View {
        ZStack(alignment: .topLeading) {
            GeometryReader{_ in
                VStack {
                    Text("🧇")
                        .font(.system(size: 100))
                        .padding()
                    
                    Text("Log in to your account")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(self.color)
                        .padding(.top, 35)
                    
                    TextField("Email", text: self.$email)
                    .padding()
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color("Color") : self.color, lineWidth: 2))
                    .padding(.top, 25)
                    
                    HStack(spacing: 15) {
                        VStack {
                            if self.visible {
                                TextField("Password", text: self.$password)
                            }
                            else {
                                SecureField("Password", text: self.$password)
                            }
                        }
                        Button(action: {self.visible.toggle()}) {
                            Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill" )
                                .foregroundColor(self.color)
                        }
                    }
                    .padding()
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.password != "" ? Color("Color") : self.color, lineWidth: 2))
                    .padding(.top, 25)
                    
                    HStack(spacing: 15) {
                        VStack {
                            if self.revisible {
                                TextField("Re-enter Password", text: self.$repassword)
                            }
                            else {
                                SecureField("Re-enter Password", text: self.$repassword)
                            }
                        }
                        Button(action: {self.revisible.toggle()}) {
                            Image(systemName: self.revisible ? "eye.slash.fill" : "eye.fill" )
                                .foregroundColor(self.color)
                        }
                    }
                    .padding()
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.repassword != "" ? Color("Color") : self.color, lineWidth: 2))
                    .padding(.top, 25)
                    
                    Button(action: {
                        
                    }) {
                        Text("Sign up")
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 50)
                    }
                    .background(Color("Color"))
                    .cornerRadius(10)
                    .padding(.top, 25)
                    
                }
                .padding(.horizontal, 25)
            }
            Button(action: {
                self.show.toggle()
            }) {
                
                Image(systemName: "chevron.left")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("Color"))
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}   

