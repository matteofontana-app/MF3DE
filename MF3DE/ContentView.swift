//
//  ContentView.swift
//  MF3DE
//
//  Created by Matteo Fontana on 17/07/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.verticalSizeClass) var sizeClass
    
    @State private var showModalCollection = false
    @State private var showModalProfile = false
    @State private var showModalGuide = false
    @State private var showModalAddModel = false
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                VStack {
                    HStack {
                        Text("MF3DE")
                            .font(.largeTitle)
                        Spacer()
                        
                        //Button for Guide Menu
                        Button(action: {
                            //Open Guide Menu
                            showModalGuide = true
                        }) {
                           Image("Question")
                                .resizable()
                                .frame(width: 35, height: 35)
                        }
                        .frame(width: 35, height: 35)
                        .padding(.trailing, (sizeClass == .compact ? 30 : 20))
                        .fullScreenCover(isPresented: $showModalGuide) {
                            GuideView(
                                showModalGuide: self.$showModalGuide
                            )
                        }
                        
                        //Button for Add New Model Menu
                        Button(action: {
                            //Open Add New Model Menu
                            showModalAddModel = true
                        }) {
                           Image("Plus")
                                .resizable()
                                .frame(width: 35, height: 35)
                        }
                        .frame(width: 35, height: 35)
                        .fullScreenCover(isPresented: $showModalAddModel) {
                            AddNewModelView(
                                showModalAddModel: self.$showModalAddModel
                            )
                        }
                        
                    }
                    .padding(.top, (sizeClass == .compact ? 10 : 0))
                    Spacer()
                    HStack {
                        Spacer()
                            .frame(width: sizeClass == .compact ? 0 : 20 ,height: sizeClass == .compact ? 0 : 20)
                        
                        
                        Button(action: {
                            //action to open library menu
                            showModalCollection = true
                        }) {
                           Image("Collection")
                                .resizable()
                                .frame(width: 35, height: 35)
                        }
                        .frame(width: 35, height: 35)
                        .fullScreenCover(isPresented: $showModalCollection) {
                            CollectionView(
                                showModalCollection: self.$showModalCollection
                            )
                        }
                        
                        Spacer()
                        Circle()
                            .frame(width: 75, height: 75)
                        Spacer()
                        
                        Button(action: {
                            //action to open profile menu
                            showModalProfile = true
                        }) {
                           Image("Person")
                                .resizable()
                                .frame(width: 35, height: 35)
                        }
                        .frame(width: 35, height: 35)
                        .fullScreenCover(isPresented: $showModalProfile) {
                            ProfileView(
                                showModalProfile: self.$showModalProfile
                            )
                        }
                        
                        Spacer()
                            .frame(width: sizeClass == .compact ? 0 : 20 ,height: sizeClass == .compact ? 0 : 20)
                        
                    }
                }.padding()
                //VR Scene
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
