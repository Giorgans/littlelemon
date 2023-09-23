//
//  CheckInfo.swift
//  littlelemon
//
//  Created by Georgios Zervos on 23/9/23.
//

import SwiftUI

struct CheckInfo: View {
    @State private var text: String
    @State private var checkbox = CheckBox()
    init(text: String) {
        self.text = text
    }
    
    func isPressed() -> Bool {
        return checkbox.getPressed()
    }
    var body: some View {
        HStack{
            checkbox
            Text(text)
        }
    }
}

#Preview {
    CheckInfo(text: "Special Offers")
}
