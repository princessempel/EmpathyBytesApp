//
//  interviewMenuView.swift
//  EmpathyBytesApp
//
//  Created by Princess Empel on 12/3/22.
//

import SwiftUI
import UIKit

struct interviewMenuView: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack(spacing:10){
            HStack {
                VStack(alignment: .leading) {
                    Text("EMPATHY BYTES")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("Interviews")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .fontWeight(.black)
                } //interview header
                Spacer()
            }
            .padding([.horizontal])
            NavigationLink(destination: spring2022InterviewsView()) {
                Text("Spring 2022")
                    .frame(width: UIScreen.main.bounds.width - 40.0, height:100)
                    .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .cornerRadius(15)
            }
            NavigationLink(destination: fall2021InterviewsView()) {
                Text("Fall 2021")
                    .frame(width: UIScreen.main.bounds.width - 40.0, height: 100)
                    .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .cornerRadius(15)
            }
            NavigationLink(destination: fall2020InterviewsView()) {
                Text("Fall 2020")
                    .frame(width: UIScreen.main.bounds.width - 40.0, height: 100)
                    .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .cornerRadius(15)
            }
            NavigationLink(destination: fall2019InterviewsView()) {
                Text("Fall 2019")
                    .frame(width: UIScreen.main.bounds.width - 40.0, height: 100)
                    .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .cornerRadius(15)
            }
            Spacer()
            /**
            
            NavigationLink(destination: spring2020InterviewsView()) {
                Text("Spring 2020")
                    .frame(width: 200, height: 50)
                    .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .cornerRadius(15)
            }
            NavigationLink(destination: fall2019InterviewsView()) {
                Text("Fall 2019")
                    .frame(width: 200, height: 50)
                    .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .cornerRadius(15)
            }
             */
        }
    }
}
