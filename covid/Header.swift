//
//  Header.swift
//  covid
//
//  Created by Admin on 22.11.2023.
//
import SwiftUI

struct Header: View {
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Hello,")
                    .font(Font.custom("Poppins-Regular", size: 16))
                    .foregroundColor(text_light_color1)
                Text("Hi James")
                    .font(
                        Font.custom("Poppins-Bold", size: 20)
                    )
                    .foregroundColor(text_dark_color)
            }
            Spacer()
            Image("Smile")
        }
        .frame(maxWidth: .infinity)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
