//
//  ProfilePicture.swift
//  littlelemon
//
//  Created by Georgios Zervos on 23/9/23.
//

import SwiftUI

struct ProfilePicture: View {
    @State private var hasPhoto = false

    var body: some View {
        if(hasPhoto){
            
        }
        else {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 35,height: 35)
                .foregroundColor(Color(hex: 0x495E57))


        }
    }
}

#Preview {
    ProfilePicture()
}
