//
//  Field.swift
//  littlelemon
//
//  Created by Georgios Zervos on 23/9/23.
//

import SwiftUI

struct Field: View {
    @State private var value : String
    
    init(value: String) {
        self.value = value
    }

    var body: some View {
        TextField(" ", text: $value)
            .padding(EdgeInsets(top: 2.5, leading: 10, bottom: 2.5, trailing: 0))
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(hex: 0xEDEFEE)) // Set the background color
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(hex: 0x495E57), lineWidth: 2) // Set the stroke color and width
                    )
                
                
            )
            .frame(width: 345, height: 25, alignment: .center)
    }
}

#Preview {
    Field(value: "Test")
}
