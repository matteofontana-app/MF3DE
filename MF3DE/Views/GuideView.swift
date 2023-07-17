//
//  GuideView.swift
//  MF3DE
//
//  Created by Matteo Fontana on 17/07/23.
//

import SwiftUI

struct GuideView: View {
    @Environment(\.verticalSizeClass) var sizeClass
    
    @Binding var showModalGuide: Bool
    
    var body: some View {
        ScrollView{
            VStack(spacing: 0){
                HStack{
                    Button(action: {
                        //Open Add New Model Menu
                        showModalGuide = false
                    }) {
                       Image("Cross")
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                    .frame(width: 25, height: 25)
                    Spacer()
                }
                HStack{
                    Text("GUIDE")
                        .font(.largeTitle)
                    Spacer()
                }
            }
            .padding()
            .padding(.top, (sizeClass == .compact ? 10 : 0))
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView(showModalGuide: .constant(true))
    }
}
