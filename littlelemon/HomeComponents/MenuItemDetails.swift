//
//  MenuItemDetails.swift
//  littlelemon
//
//  Created by Georgios Zervos on 24/9/23.
//

import SwiftUI

struct MenuItemDetails: View {
    @State private var isProfileOpen = false

    var body: some View {
        NavigationView{
            ScrollView{
                
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading:
                                    Image("littleLemon")
                                    
                .resizable()
                .frame(width: 170,alignment: .center)
                .padding(EdgeInsets(top: 0, leading: 130, bottom: 5, trailing: 0))

            )
            .navigationBarItems(trailing:
                                    Button(action: {isProfileOpen.toggle()}, label: {ProfilePicture()})
                .fullScreenCover(isPresented: $isProfileOpen) {
                    Profile()
                }

            .padding(EdgeInsets(top: 0, leading: 90, bottom: 5, trailing: 10))

            )

            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)

        }
    }
}

#Preview {
    MenuItemDetails()
}
