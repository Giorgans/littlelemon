//
//  CheckBox.swift
//  littlelemon
//
//  Created by Georgios Zervos on 23/9/23.
//

import SwiftUI

struct CheckBox: View {
    @State private var isPressed = false
    @State private var title = "Check"
    
    func getPressed() -> Bool {
        return self.isPressed
    }
    
    var body: some View {
            if(isPressed) {
                Button(action: {
                    isPressed = false
                }) {
                    Image(systemName: "checkmark")

                        .foregroundColor(Color(hex: 0xEDEFEE))
                        .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)) // Apply custom padding values

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
                    Image(systemName: "checkmark")
                        .foregroundColor(Color(hex: 0x495E57))
                        .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)) // Apply custom padding values

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
    CheckBox()
}
