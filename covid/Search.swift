//
//  Search.swift
//  covid
//
//  Created by Admin on 22.11.2023.
//
import SwiftUI

struct Search: View {
    @State private var find: String = ""
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image("search-normal")
                .frame(width: 24, height: 24)
            TextField(
                "Search doctor or health issue",
                text: $find
            )
            .font(Font.custom("Poppins-Regular", size: 15))
            .foregroundColor(text_light_color1)
        }
        .padding(16)
        .frame(maxWidth: .infinity)
        .background(back_ligth_color1)
        .cornerRadius(12)
    }
}

struct Search_Preview: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
