//
//  ContentView.swift
//  loginPage
//
//  Created by Admin on 29/04/20.
//  Copyright © 2020 Untitled Company. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: .init(colors: [Color.black,Color.black,Color.black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            login()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct login : View {
    @State var index = 0
    
    var body: some View{
        VStack{
            Image("gaming")
                .resizable()
                .scaledToFit()
                .frame(width: 130)
            
            
            
            HStack(spacing : 15){
                Button(action: {
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                        self.index=0
                    }
                    
                    
                }) {
                    Text("Existing")
                        .foregroundColor(self.index == 0 ? .blue : .white)
                        .fontWeight(.bold)
                        .padding(.vertical,10)
                        .frame(width: (UIScreen.main.bounds.width-50)/2)
                }.background(self.index==0 ? Color.white : Color.clear)
                    .clipShape(Capsule())
                Button(action: {
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                        self.index=1
                    }
                }) {
                    Text("New")
                        .foregroundColor(self.index == 1 ? .blue : .white)
                        .fontWeight(.bold)
                        .padding(.vertical,10)
                        .frame(width: (UIScreen.main.bounds.width-50)/2)
                }.background(self.index==1 ? Color.white : Color.clear)
                    .clipShape(Capsule())
            }.background(Color.black.opacity(0.1))
                .clipShape(Capsule())
                .padding(.top,25)
            
            if self.index == 0 {
                masuk()
            }else{
                buat()
            }
            
            if self.index == 0 {
                Text("Forgot Password ? ")
                .foregroundColor(Color.white)
                .font(.caption)
                .padding(.bottom)
                .padding(.top)
            }
            
            Text("OR ")
                .foregroundColor(Color.white)
                .font(.caption)
            
            HStack(spacing : 15){
                Button(action: {}, label: {
                    Text("Google")
                        .fontWeight(.bold)
                        .frame(width: 100)
                        .padding(.vertical,10)
                }).background(Color.white)
                    .cornerRadius(5
                        
                )
                Button(action: {}, label: {
                    Text("Facebook")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .frame(width: 100)
                        .padding(.vertical,10)
                }).background(Color.blue)
                    .cornerRadius(5)
            }.padding(.top,30)
        }.padding()
        
    }
}

struct masuk : View {
    @State var mail = ""
    @State var pass = ""
    var body: some View{
        VStack{
            VStack(spacing : 15){
                HStack{
                    Image(systemName: "envelope")
                        .foregroundColor(Color.black)
                    
                    TextField("Enter email address", text: self.$mail)
                }.padding(.vertical,20)
                Divider()
                HStack(spacing : 10){
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 15, height: 18)
                        .foregroundColor(Color.black)
                    
                    SecureField("Enter password", text: self.$pass)
                    Button(action: {}, label: {
                        Image(systemName: "eye")
                            .foregroundColor(Color.black)
                    })
                }.padding(.vertical,20)
                
            }.padding(.vertical)
                .padding(.horizontal,20)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.top,25)
                .padding(.bottom,40)
            
            Button(action: {}, label: {
                Text("LOGIN")
                    .padding(.vertical)
                    .foregroundColor(Color.white)
                    .frame(width: (UIScreen.main.bounds.width)-100.0)
                
            }).background(Color.blue)
                .cornerRadius(9)
                .offset(y:-20)
                .padding(-40)
            
        }
        
        
        
    }
}

struct buat : View {
    @State var mail = ""
    @State var pass = ""
    @State var repass = ""
    
    var body: some View{
        VStack{
            VStack(spacing : 15){
                HStack{
                    Image(systemName: "envelope")
                        .foregroundColor(Color.black)
                    
                    TextField("Enter email address", text: self.$mail)
                }.padding(.vertical,20)
                Divider()
                HStack(spacing : 10){
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 15, height: 18)
                        .foregroundColor(Color.black)
                    
                    SecureField("Enter password", text: self.$pass)
                    Button(action: {}, label: {
                        Image(systemName: "eye")
                            .foregroundColor(Color.black)
                    })
                }.padding(.vertical,20)
                Divider()
                
                HStack(spacing : 10){
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 15, height: 18)
                        .foregroundColor(Color.black)
                    
                    SecureField("Confirm password", text: self.$repass)
                    Button(action: {}, label: {
                        Image(systemName: "eye")
                            .foregroundColor(Color.black)
                    })
                }.padding(.vertical,20)
                
            }.padding(.vertical)
                .padding(.horizontal,20)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.top,25)
                .padding(.bottom,40)
            
            Button(action: {}, label: {
                Text("SIGN UP")
                    .padding(.vertical)
                    .foregroundColor(Color.white)
                    .frame(width: (UIScreen.main.bounds.width)-100.0)
                
            }).background(Color.blue)
                .cornerRadius(9)
                .offset(y:-20)
                .padding(-40)
            
        }
        
        
        
    }
}
