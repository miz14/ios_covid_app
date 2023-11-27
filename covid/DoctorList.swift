//
//  DoctorList.swift
//  covid
//
//  Created by Admin on 22.11.2023.
//
import SwiftUI

struct DoctorInfo: Identifiable {
let id = UUID()
var name: String
var img: String
var spec: String
var dist: String
var stat_time: String
var open_time: String
}

struct DoctorList: View {
    @State private var doctors = [
        DoctorInfo(name: "Dr. Joseph Brostito", img: "chel2", spec: "Dental Specialist", dist: "1.2 KM", stat_time: "4,8 (120 Reviews)", open_time: "Open at 17.00"),
        DoctorInfo(name: "Dr. Imran Syahir", img: "chel1", spec: "General Specialist", dist: "1.2 KM", stat_time: "4,8 (120 Reviews)", open_time: "Open at 17.00")
    ]
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Near Doctor")
                .font(Font.custom("Poppins-SemiBold", size: 16))
            Spacer()
                .frame(height: 2)
            ForEach(doctors) { doctor in
                VStack(alignment: .center, spacing: 20) {
                    HStack(alignment: .center) {
                        Image(doctor.img)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 58, height: 58)
                            .background(
                                .white
                            )
                            .clipShape(Circle())
                        Spacer()
                            .frame(width: 10)
                        VStack(alignment: .leading, spacing: 8) {
                            Text(doctor.name)
                                .font(Font.custom("Poppins-Bold", size: 16))
                                .foregroundColor(text_dark_color)
                            Text(doctor.spec)
                                .font(Font.custom("Poppins-Regular", size: 14))
                                .foregroundColor(text_light_color1)
                        }
                        Spacer()
                        HStack(alignment: .center, spacing: 8) {
                            Image("location")
                                .frame(width: 16, height: 16)
                            Text(doctor.dist)
                                .font(Font.custom("Poppins-Regular", size: 14))
                                .foregroundColor(text_light_color1)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    
                    Rectangle()
                        .stroke(stroke_light_color)
                        .frame(height: 1)
                    HStack(alignment: .center, spacing: 12) {
                        HStack(alignment: .center, spacing: 8) {
                            Image("clock")
                                .renderingMode(.template)
                                .frame(width: 20, height: 20)
                                .foregroundColor(orange_light)
                                
                            Text(doctor.stat_time)
                                .font(Font.custom("Poppins-Regular", size: 12))
                                .foregroundColor(orange_light)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        
                        HStack(alignment: .center, spacing: 8) {
                            Image("clock")
                                .renderingMode(.template)
                                .frame(width: 20, height: 20)
                                .foregroundColor(blue_color)
                            Text(doctor.open_time)
                                .font(Font.custom("Poppins-Regular", size: 12))
                                .foregroundColor(blue_color)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 20)
                .background(.white)
                .cornerRadius(12)
                .shadow(color: shadow_color, radius: 10, x:2, y: 12)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity)
        
    }
}

struct DoctorList_Preview: PreviewProvider {
    static var previews: some View {
        DoctorList()
    }
}
