//
//  CollectionView.swift
//  MF3DE
//
//  Created by Matteo Fontana on 17/07/23.
//

import SwiftUI

struct CollectionView: View {
    @Environment(\.verticalSizeClass) var sizeClass
    
    @Binding var showModalCollection: Bool
    
    var body: some View {
        ScrollView{
            VStack(spacing: 0){
                HStack{
                    Button(action: {
                        //Open Add New Model Menu
                        showModalCollection = false
                    }) {
                       Image("Cross")
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                    .frame(width: 25, height: 25)
                    Spacer()
                }
                .padding(.bottom, 15)
                HStack{
                    Text("COLLECTION")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                }
                .padding(.bottom, 10)
                HStack{
                    ZStack {
                        Color.gray.opacity(0.2)
                        HStack {
                            Image("Search")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text("Search")
                            Spacer()
                        }
                        .padding(8)
                    }
                    Image("Filter")
                        .resizable()
                        .frame(width: 25, height: 25)
                }
            }
            .padding(.bottom)
            .padding(.trailing)
            .padding(.leading, (sizeClass == .compact ? 10 : 0))
            .padding(.top, (sizeClass == .compact ? 10 : 0))
        }
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView(showModalCollection: .constant(true))
    }
}
