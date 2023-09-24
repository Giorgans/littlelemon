//
//  Hero.swift
//  littlelemon
//
//  Created by Georgios Zervos on 25/9/23.
//

import SwiftUI

struct Hero: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Little Lemon")
                        .foregroundColor(Color.primaryColor2)
                        .font(.displayFont())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    Text("Chicago")
                        .foregroundColor(Color.highlightColor1)
                        .font(.subTitleFont())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))

                    Text("We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.")
                    .foregroundColor(Color.highlightColor1)
                    .font(.leadText())
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                Image("homeImage")
                    .resizable()
                    .frame(width: 124, height: 124)
                    .cornerRadius(14)
                    .padding(EdgeInsets(top: 40, leading: 0, bottom: 0, trailing: 0))

            }
        }
        .padding()
        .background(Color.primaryColor1)
        .frame(maxWidth: .infinity, maxHeight: 240)

    }
}

#Preview {
    Hero()
}
