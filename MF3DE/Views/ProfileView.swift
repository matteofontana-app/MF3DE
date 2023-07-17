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
            VStack{
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
                HStack{
                    Text("PROFILE")
                        .font(.largeTitle)
                    Spacer()
                }
            }
            .padding()
            .padding(.top, (sizeClass == .compact ? 10 : 0))
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(showModalProfile: .constant(true))
    }
}
