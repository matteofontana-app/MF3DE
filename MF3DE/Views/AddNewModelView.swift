//
//  AddNewModelView.swift
//  MF3DE
//
//  Created by Matteo Fontana on 17/07/23.
//

import SwiftUI

struct AddNewModelView: View {
    @Environment(\.verticalSizeClass) var sizeClass
    
    @Binding var showModalAddModel: Bool
    
    var body: some View {
        ScrollView{
            VStack{
                
                //Top Bar
                HStack{
                    Button(action: {
                        //Open Add New Model Menu
                        showModalAddModel = false
                    }) {
                       Image("Cross")
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                    .frame(width: 25, height: 25)
                    Spacer()
                    Text("Add new model")
                        .font(.body)
                    Spacer()
                    Button(action: {
                        //Open Add New Model Menu
                        showModalAddModel = false
                        //Save also
                    }) {
                       Image("Save")
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                    .frame(width: 25, height: 25)
                }
                
                //Content
                VStack{
                    if (sizeClass == .compact) {
                        
                        
                        //LANDSCAPE
                        HStack{
                            VStack{
                                ZStack{
                                    HStack{
                                        Text("Name")
                                            .font(.title)
                                        Spacer()
                                        Text("(0/20)")
                                    }.padding(.horizontal)
                                    Color.gray.opacity(0.2)
                                }
                                .frame(height: 80)
                                .padding(.bottom, 17)
                                
                                ZStack{
                                    VStack{
                                        HStack {
                                            Text("Description")
                                                .font(.body)
                                            Spacer()
                                        }
                                        Spacer()
                                        HStack {
                                            Spacer()
                                            Text("(0/20)")
                                        }
                                    }
                                    .padding()
                                    Color.gray.opacity(0.2)
                                }
                                .frame(height: 140)
                                .padding(.bottom, 17)
                                
                                ZStack{
                                    VStack{
                                        HStack {
                                            Text("Gallery (6/9)")
                                                .font(.body)
                                            Spacer()
                                            Button(action: {
                                                //Open Add New Model Menu
                                            }) {
                                               Image("Plus")
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                            }
                                            .frame(width: 35, height: 35)
                                        }
                                        GeometryReader { geometry in
                                                    VStack(spacing: 20) {
                                                        ForEach(0..<3) { _ in
                                                            HStack(spacing: 20) {
                                                                ForEach(0..<3) { _ in
                                                                    ZStack {
                                                                        Rectangle()
                                                                            .fill(Color.black)
                                                                            .frame(width: (geometry.size.width-50)/3, height: (geometry.size.width-50)/3)
                                                                        
                                                                        Circle()
                                                                            .fill(Color.gray)
                                                                            .frame(width: 30, height: 30)
                                                                            .offset(x: +(geometry.size.width-50)/6, y: -(geometry.size.width-50)/6)
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                        .padding(.top, 20)
                                        HStack {
                                            Text("Total Size")
                                            Spacer()
                                            Text("1.1MB")
                                                .bold()
                                        }
                                    }
                                    .padding()
                                    Color.gray.opacity(0.2)
                                }
                                .frame(height: 460)
                                .padding(.bottom, 17)
                                
                                Spacer()
                            }
                            .padding(.trailing, 10)
                            VStack{
                                ZStack{
                                    HStack{
                                        Text("Author")
                                            .font(.title3)
                                        Spacer()
                                        Text("(0/20)")
                                    }.padding(.horizontal)
                                    Color.gray.opacity(0.2)
                                }
                                .frame(height: 80)
                                .padding(.bottom, 17)
                                
                                ZStack{
                                    VStack{
                                        HStack {
                                            Text("Model:")
                                                .font(.body)
                                            Spacer()
                                            Text("Select")
                                                .foregroundColor(.orange)
                                                .bold()
                                                .underline()
                                        }
                                        Spacer()
                                        HStack {
                                            Text("Size")
                                            Spacer()
                                            Text("1.1MB")
                                                .bold()
                                        }
                                    }
                                    .padding()
                                    Color.gray.opacity(0.2)
                                }
                                .frame(height: 140)
                                .padding(.bottom, 17)
                                
                                Spacer()
                            }
                            .padding(.leading, 10)
                        }
                        
                        
                        
                    } else {
                        
                        
                        //PORTRAIT
                        VStack {
                            ZStack{
                                HStack{
                                    Text("Name")
                                        .font(.title)
                                    Spacer()
                                    Text("(0/20)")
                                }.padding(.horizontal)
                                Color.gray.opacity(0.2)
                            }
                            .frame(height: 80)
                            .padding(.bottom, 17)
                            
                            ZStack{
                                VStack{
                                    HStack {
                                        Text("Description")
                                            .font(.body)
                                        Spacer()
                                    }
                                    Spacer()
                                    HStack {
                                        Spacer()
                                        Text("(0/20)")
                                    }
                                }
                                .padding()
                                Color.gray.opacity(0.2)
                            }
                            .frame(height: 140)
                            .padding(.bottom, 17)
                            
                            ZStack{
                                HStack{
                                    Text("Author")
                                        .font(.title3)
                                    Spacer()
                                    Text("(0/20)")
                                }.padding(.horizontal)
                                Color.gray.opacity(0.2)
                            }
                            .frame(height: 80)
                            .padding(.bottom, 17)
                            
                            ZStack{
                                VStack{
                                    HStack {
                                        Text("Model:")
                                            .font(.body)
                                        Spacer()
                                        Text("Select")
                                            .foregroundColor(.orange)
                                            .bold()
                                            .underline()
                                    }
                                    Spacer()
                                    HStack {
                                        Text("Size")
                                        Spacer()
                                        Text("1.1MB")
                                            .bold()
                                    }
                                }
                                .padding()
                                Color.gray.opacity(0.2)
                            }
                            .frame(height: 140)
                            .padding(.bottom, 17)
                            
                            ZStack{
                                VStack{
                                    HStack {
                                        Text("Gallery (6/9)")
                                            .font(.body)
                                        Spacer()
                                        Button(action: {
                                            //Open Add New Model Menu
                                        }) {
                                           Image("Plus")
                                                .resizable()
                                                .frame(width: 20, height: 20)
                                        }
                                        .frame(width: 35, height: 35)
                                    }
                                    GeometryReader { geometry in
                                                VStack(spacing: 20) {
                                                    ForEach(0..<3) { _ in
                                                        HStack(spacing: 20) {
                                                            ForEach(0..<3) { _ in
                                                                ZStack {
                                                                    Rectangle()
                                                                        .fill(Color.black)
                                                                        .frame(width: (geometry.size.width-50)/3, height: (geometry.size.width-50)/3)
                                                                    
                                                                    Circle()
                                                                        .fill(Color.gray)
                                                                        .frame(width: 30, height: 30)
                                                                        .offset(x: +(geometry.size.width-50)/6, y: -(geometry.size.width-50)/6)
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                    .padding(.top, 20)
                                    HStack {
                                        Text("Total Size")
                                        Spacer()
                                        Text("1.1MB")
                                            .bold()
                                    }
                                }
                                .padding()
                                Color.gray.opacity(0.2)
                            }
                            .frame(height: 460)
                            .padding(.bottom, 17)
                            
                            ZStack{
                                VStack{
                                    HStack {
                                        Text("Tags:")
                                            .font(.body)
                                        Spacer()
                                        Button(action: {
                                            //Open Add New Model Menu
                                        }) {
                                           Image("Edit")
                                                .resizable()
                                                .frame(width: 20, height: 20)
                                        }
                                        .frame(width: 35, height: 35)
                                        .opacity(0.5)
                                        .disabled(true)
                                    }
                                    Spacer()
                                    HStack {
                                        Text("New:")
                                        Spacer()
                                            .bold()
                                    }
                                    ZStack {
                                        Color.white
                                        HStack {
                                            Text("Name")
                                            Spacer()
                                            Text("(0/15)")
                                            Rectangle()
                                                .frame(width: 25, height: 25)
                                            Button(action: {
                                                //Open Add New Model Menu
                                            }) {
                                               Image("Save")
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                            }
                                            .frame(width: 35, height: 35)
                                        }
                                        .padding()
                                    }
                                }
                                .padding()
                                Color.gray.opacity(0.2)
                            }
                            .frame(height: 150)
                            .padding(.bottom, 17)
                            
                        }
                        
                        
                        
                    }
                }
                .padding(.top, 25)
            }
            .padding()
            .padding(.top, (sizeClass == .compact ? 10 : 0))
        }
    }
}

struct AddNewModelView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewModelView(showModalAddModel: .constant(true))
    }
}
