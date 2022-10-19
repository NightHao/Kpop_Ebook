//
//  ContentView.swift
//  BTS_G
//
//  Created by nighthao on 2022/10/18.
//

import SwiftUI

struct ContentView: View {
    @State private var moveDistance: Double = -80
    @State private var army_show = false
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    Button("Run"){
                        moveDistance += 100
                        army_show = true
                    }.offset(x:-140,y:15)
                    Image("mic")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .offset(x:moveDistance, y:-10)
                    .animation(.default, value: moveDistance)
                    VStack{
                        if army_show{
                            Image("army")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .offset(x:180, y:-10)
                                .transition(.opacity)
                        }
                    }
                }
                NavigationLink{
                    BTSView()
                }label: {
                    VStack{
                        Text("BTS")
                            .foregroundColor(.purple)
                        Image("BTS")
                            .resizable()
                            .frame(width: 400, height: 300)
                    }
                }
                NavigationLink{
                    IUView()
                }label: {
                    VStack{
                        Text("IU")
                            .foregroundColor(.yellow)
                        Image("IU")
                            .resizable()
                            .frame(width: 400, height: 300)
                    }
                }
            }
            .navigationTitle("Kpop").offset(y:-10)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
