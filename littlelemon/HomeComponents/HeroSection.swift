//
//  HeroSection.swift
//  littlelemon
//
//  Created by Georgios Zervos on 22/9/23.
//

import SwiftUI

struct HeroSection: View {
    @State private var searchText: String = ""
    @State private var isHome: Bool

    init(isHome: Bool){
        self.isHome = isHome
    }

    var body: some View {
        VStack {
            HStack{
                VStack{
                    Text("Little Lemon")
                        .bold()
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(EdgeInsets(top: 24, leading: 24, bottom: 0, trailing: 0))
                        .font(.system(size: 30))
                        .foregroundColor(Color(hex: 0xF4CE14))
                    Text("Chicago")
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 0))
                        .font(.system(size: 24))
                        .foregroundColor(Color(hex: 0xEDEFEE))

                    
                    Text("We are a family owned Mediterranean restaurant,focused on traditional recipes served with amodern twist.")
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(EdgeInsets(top: 1, leading: 24, bottom: 0, trailing: 0))
                        .font(.system(size: 16))
                        .foregroundColor(Color(hex: 0xEDEFEE))

                }
                Image("homeImage")
                    .resizable()
                    .cornerRadius(25)
                    .frame(width: 165,height: 165)
                    .padding(EdgeInsets(top: 24, leading: 0, bottom: 0, trailing: 24))
                
            }
            HStack {
                if(isHome){
                    Image(systemName: "magnifyingglass")
                        .colorInvert()
                    TextField("Search...", text: $searchText)
                }
                else {
                    Text("Onboarding:")
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(EdgeInsets(top: 12, leading: 0, bottom: 0, trailing: 0))
                        .font(.system(size: 24))
                        .foregroundColor(Color(hex: 0xEDEFEE))

                }
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(EdgeInsets(top: 0, leading: 24, bottom: 24, trailing: 24))



        }
        .background(Color(hex: 0x495E57))

    
    }
}
extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}


#Preview {
    HeroSection(isHome: true)
}
