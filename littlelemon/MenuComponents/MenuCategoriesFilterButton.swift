//
//  MenuCategoriesFilterButton.swift
//  littlelemon
//
//  Created by Georgios Zervos on 22/9/23.
//

import SwiftUI

struct MenuCategoriesFilterButton: View {
    @State private var isPressed = false
    @State private var title: String

    init(title: String){
        self.title = title
    }
    
    var body: some View {
        if(isPressed) {
            Button(action: {
                isPressed = false
            }) {
                Text(title)
                    .foregroundColor(Color(hex: 0xEDEFEE))
                    .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15)) // Apply custom padding values

            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(hex: 0x495E57)) // Set the background color
                    .frame(width: nil, height: nil, alignment: .center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(hex: 0xEDEFEE), lineWidth: 2) // Set the stroke color and width
                    )
            )
        }
        else {
            Button(action: {
                isPressed = true
            }) {
                Text(title)
                    .foregroundColor(Color(hex: 0x495E57))
                    .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15)) // Apply custom padding values

            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(hex: 0xEDEFEE)) // Set the background color
                    .frame(width: nil, height: nil, alignment: .center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(hex: 0x495E57), lineWidth: 2) // Set the stroke color and width
                    )
            )
        }
    }
}

#Preview {
    MenuCategoriesFilterButton(title: "Test")
}
