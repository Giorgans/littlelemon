//
//  MenuBreakdown.swift
//  littlelemon
//
//  Created by Georgios Zervos on 22/9/23.
//

import SwiftUI

struct MenuBreakdown: View {
    @ObservedObject var model = Model()

    var body: some View {
        VStack{
            Text("ORDER FOR DELIVERY!")
                .foregroundColor(Color(hex: 0x333333))
                .bold()
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(EdgeInsets(top: 24, leading: 24, bottom: 0, trailing: 0))
            
            HStack{
                ForEach(model.DishCategories, id: \.self){ Category in
                    MenuCategoriesFilterButton(title: Category)
                }
            }
        }
    }
}

#Preview {
    MenuBreakdown()
}
