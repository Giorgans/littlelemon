//
//  RegisterForm.swift
//  littlelemon
//
//  Created by Georgios Zervos on 23/9/23.
//

import SwiftUI

struct RegisterForm: View {
    @State private var fname = ""
    @State private var lname = ""
    @State private var email = ""
    @State private var phone = ""
    @State private var isHomeOpen = false
    var body: some View {
        VStack {
            Text("First Name *")
                .bold()
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 250))

            Field(value: fname)
            Text("Last Name *")
                .bold()
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 250))

            Field(value: lname)
        
            Text("Email *")
                .bold()
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 290))

            Field(value: email)
            
            Text("Phone Number")
                .bold()
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 230))

            Field(value: phone)
            
            Text("Email Notifications")
                .bold()
                .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 200))

            let orderStat = CheckInfo(text: "Order Statuses")
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 190))
            orderStat
            
            let passChange = CheckInfo(text: "Password Changes")
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 159))
            passChange
            
            let specialOffers = CheckInfo(text: "Special Offers")
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 196))
            specialOffers
            
            let newsLetter = CheckInfo(text: "Newsletter")
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 219))
            newsLetter
            
            
            Button(action: {
                isHomeOpen.toggle()
            }) {
                Text("Register")
                    .foregroundColor(Color(hex: 0x495E57))
                    .padding(EdgeInsets(top: 10, leading: 35, bottom: 10, trailing: 35)) // Apply custom padding values

            }
            .fullScreenCover(isPresented: $isHomeOpen) {
                Home()
            }

            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(hex: 0xF4CE14)) // Set the background color
                    .frame(width: nil, height: nil, alignment: .center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(hex: 0x495E57), lineWidth: 2) // Set the stroke color and width
                    )
            )
            .padding(EdgeInsets(top: 50, leading: 0, bottom: 10, trailing: 0)) // Apply custom padding values


    }
        .frame(maxWidth: .infinity,alignment: .leading)
        .padding(EdgeInsets(top: 10, leading: 24, bottom: 0, trailing: 0))

  }
}

#Preview {
    RegisterForm()
}
