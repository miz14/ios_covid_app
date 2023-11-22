//
//  Categories.swift
//  covid
//
//  Created by Admin on 22.11.2023.
//
import SwiftUI

struct Category: Identifiable {
    let id = UUID()
    var icon: String
    var name: String
}

struct Categories: View {
    @State private var categories = [
        Category(icon: "sun", name: "Covid 19"),
        Category(icon: "profile-add", name: "Doctor"),
        Category(icon: "link", name: "Medicine"),
        Category(icon: "hospital", name: "Hospital")
    ]
    var body: some View {
        HStack(alignment: .top, spacing: 13) {
            ForEach(categories) { category in
                VStack(alignment: .center, spacing: 8) {
                    Image(category.icon)
                        .padding(24)
                        .background(back_ligth_color1)
                        .cornerRadius(100)
                    Text(category.name)
                        .font(Font.custom("Poppins-Regular", size: 15))
                        .foregroundColor(text_light_color1)
                }
                
            }
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity)
    }
}

struct Category_Preview: PreviewProvider {
    static var previews: some View {
        Categories()
    }
}
