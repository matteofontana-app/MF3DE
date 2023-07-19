//
//  ProfileView.swift
//  MF3DE
//
//  Created by Matteo Fontana on 17/07/23.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.verticalSizeClass) var sizeClass
    
    @Binding var showModalProfile: Bool
    
    var body: some View {
        ScrollView{
            VStack(spacing: 0){
                HStack{
                    Button(action: {
                        //Open Add New Model Menu
                        showModalProfile = false
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
                    Text("PROFILE")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                }.padding(.bottom, 10)
            }
            .padding(.bottom)
            .padding(.trailing)
            .padding(.leading, (sizeClass == .compact ? 10 : 20))
            .padding(.top, (sizeClass == .compact ? 20 : 10))
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(showModalProfile: .constant(true))
    }
}
