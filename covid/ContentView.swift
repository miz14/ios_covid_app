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

struct MainCard: View {
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            HStack(alignment: .center) {
                HStack(alignment: .center) {
                    Image("chel1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 58, height: 58)
                        .background(
                            .white
                        )
                        .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Dr. Imran Syahir")
                            .font(Font.custom("Poppins-Bold", size:16))
                            .foregroundColor(.white)
                        Text("General Doctor")
                            .font(Font.custom("Poppins-Regular", size: 14))
                            .foregroundColor(text_light_color2)
                    }
                }
                Spacer()
                Image("arrow-right")
                    .frame(width: 24, height: 24)
            }
            Rectangle()
                .stroke(.white.opacity(0.15))
                .frame(height: 1)
            HStack(alignment: .center, spacing: 12) {
                HStack(alignment: .center, spacing: 8) {
                    Image("calendar-mini")
                        .frame(width: 16, height: 16)
                    Text("Sunday, 12 June")
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .foregroundColor(.white)
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                
                HStack(alignment: .center, spacing: 8) {
                    Image("clock")
                        .frame(width: 16, height: 16)
                    Text("11:00 - 12:00 AM")
                        .font(Font.custom("Poppins-Regular", size: 12))
                        .foregroundColor(.white)
                    Spacer()
                }
                .frame(maxWidth: .infinity)
            }
            
            
        }
        .padding(20)
        .background(blue_color)
        .frame(maxWidth: .infinity)
        .cornerRadius(12)
    }
}

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            
            Header()
            MainCard()
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.vertical, 24)
        .padding(.horizontal, 20)
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
