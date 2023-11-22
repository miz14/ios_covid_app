//
//  ContentView.swift
//  covid
//
//  Created by Admin on 22.11.2023.
//

import SwiftUI

let text_light_color1 = Color(red: 0.53, green: 0.59, blue: 0.73)
let text_dark_color = Color(red: 0.05, green: 0.11, blue: 0.2)
let blue_color = Color(red: 0.28, green: 0.58, blue: 1)
let text_light_color2 = Color(red: 0.8, green: 0.88, blue: 1)
let back_ligth_color1 = Color(red: 0.98, green: 0.98, blue: 0.98)
let shadow_color = Color(red: 0.35, green: 0.46, blue: 0.65).opacity(0.04)
let stroke_light_color = Color(red: 0.96, green: 0.96, blue: 0.96)
let orange_light = Color(red: 1, green: 0.69, blue: 0.32)
let nav_back_color = Color(red: 0.39, green: 0.71, blue: 1)



struct ContentView: View {
    private static let pages = ["Home", "Calendar", "Messages", "Profile"]
    private static let images = ["Home", "calendar-2", "message", "profile"]
    
    @State var selectedIdx = 0
    var body: some View {
        VStack {
            ZStack {
                switch selectedIdx {
                case 0:
                    ScrollView {
                        VStack(alignment: .leading, spacing: 0) {
                            
                            Header()
                            Spacer()
                                .frame(height: 32)
                            MainCard()
                            Spacer()
                                .frame(height: 20)
                            Search()
                            Spacer()
                                .frame(height: 24)
                            Categories()
                            Spacer()
                                .frame(height: 32)
                            DoctorList()
                            Spacer()
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding(.vertical, 24)
                        .padding(.horizontal, 20)
                    }
        
                case 1:
                    ScrollView {
                        Text("Calendar Page")
                    }
                case 2:
                    ScrollView {
                        Text("Message Page")
                    }
                case 3:
                    ScrollView {
                        Text("Profile Name")
                    }
                default:
                    ScrollView {
                        Text("?")
                    }
                }
            }
            Spacer()
            HStack(alignment: .center, spacing: 12) {
                ForEach (0..<4) { idx in
                    Button(action: {selectedIdx = idx}, label: {
                        HStack(alignment: .center, spacing: 8) {
                            Image(ContentView.images[idx])
                                .renderingMode(.template)
                                .frame(width: 24, height: 24)
                                .foregroundColor(nav_back_color)
                            if (idx == selectedIdx) {
                                Text(ContentView.pages[idx])
                                    .font(Font.custom("Nunuto-Bold", size: 14))
                                    .foregroundColor(nav_back_color)
                            }
                        }
                        .padding(12)
                        .background(idx == selectedIdx ? nav_back_color.opacity(0.1) : .white)
                        .cornerRadius(12)
                    })
                }
            }
            .frame(maxWidth: .infinity)
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
