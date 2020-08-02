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
        }.edgesIgnoringSafeArea(.all)
    }
}

struct TopView: View {
    
    @State var search = ""
    
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
                                .renderingMode(.original)
                                .frame(width: 60, height: 60)
                        })
                    }
                }
            })
            HStack(spacing: 15){
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 18, height: 18)
                    .foregroundColor(Color.black.opacity(0.3))
                TextField("Search", text: self.$search)
            }.padding()
            .background(Color.white)
            .cornerRadius(8)
            .padding(.bottom, 10)
            
        }.padding()
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
        .background(Color("Color1"))
        .clipShape(shape())
    }
}

struct shape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomLeft, .bottomRight], cornerRadii: CGSize(width: 22, height: 22))
        
        return Path(path.cgPath)
    }
}
