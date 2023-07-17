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
            VStack{
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
                HStack{
                    Text("COLLECTION")
                        .font(.largeTitle)
                    Spacer()
                }
            }
            .padding()
            .padding(.top, (sizeClass == .compact ? 10 : 0))
        }
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView(showModalCollection: .constant(true))
    }
}
