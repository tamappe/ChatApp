//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by 玉置 on 2020/08/02.
//

import SwiftUI

@main
struct ChatAppApp: App {
    var body: some Scene {
        WindowGroup {
            Home()
        }
    }
}

struct Home: View {
    var body: some View {
        VStack(spacing: 0) {
            TopView()
            Spacer()
        }
    }
}

struct TopView: View {
    var body: some View {
        VStack(spacing: 18) {
            HStack{
                Text("Messages")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(Color.black.opacity(0.7))
                
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image("menu")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color.black.opacity(0.4))
                })
            }
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(spacing: 18) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color("Color2"))
                            .padding(25)
                    })
                    .background(Color("Color2").opacity(0.5))
                    .clipShape(Circle())
                    
                    ForEach(1...7, id:\.self) { i in
                        Button(action: {
                            
                        }, label: {
                            Image("p\(i)")
                                .resizable()
                                .frame(width: 60, height: 60)
                        })
                    }
                }
            })
        }.padding()
        .background(Color("Color1"))
    }
}
