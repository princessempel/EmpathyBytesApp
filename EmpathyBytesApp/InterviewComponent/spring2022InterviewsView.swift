//
//  spring2022InterviewsView.swift
//  EmpathyBytesApp
//
//  Created by Princess Empel on 12/3/22.
//

import SwiftUI
import UIKit

struct spring2022InterviewsView: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
       
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("EMPATHY BYTES")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("Spring 2022 Interviews")
                            .font(.system(size: 30, weight: .bold, design: .default))
                            .fontWeight(.black)
                    } //interview header
                    Spacer()
                }
                .padding([.horizontal])
                //contains navigations to each interview, using cardview class that specifies the components of each card as image, date, title, and author
                ScrollView {
                    NavigationLink(destination: sheleahView()) {
                        cardView(image: "logoCircuitsTech", category: "Spring 2022", heading: "Sheleah Harris", author:"by Greyson Mullins")
                    }
                    NavigationLink(destination: samahView()) {
                        cardView(image: "logoCircuitsTech", category: "Spring 2022", heading: "Samah Khan", author:"by Greyson Mullins")
                    }
                }
            }
//            .background(LinearGradient(
//                colors: [.init(red: 249/255, green: 246/255, blue: 231/255), .init(red: 249/255, green: 246/255, blue: 231/255)],
//                startPoint: .top, endPoint: .bottom))
    }
}

struct spring2022InterviewsView_Previews: PreviewProvider {
    static var previews: some View {
        spring2022InterviewsView()
    }
}
