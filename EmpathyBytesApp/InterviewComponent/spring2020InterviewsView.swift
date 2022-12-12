//
//  spring2020InterviewsView.swift
//  EmpathyBytesApp
//
//  Created by Princess Empel on 12/3/22.
//

import SwiftUI
import UIKit

struct spring2020InterviewsView: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
       
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("EMPATHY BYTES")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("Spring 2020 Interviews")
                            .font(.system(size: 30, weight: .bold, design: .default))
                            .fontWeight(.black)
                    } //interview header
                    Spacer()
                }
                .padding([.horizontal])
                //contains navigations to each interview, using cardview class that specifies the components of each card as image, date, title, and author
                ScrollView {
                    NavigationLink(destination: MusicView()) {
                        cardView(image: "invention", category: "Spring 2020", heading: "Matthew Dick on being a Prototyping Instructor", author:"by Jaewon Drake")
                    }
                    NavigationLink(destination: georgiaView()) {
                        cardView(image: "ringgold", category: "Spring 2020", heading: "Ringgold, Georgia: Lara Langston", author:"by Hunter Copp")
                    }
                }
            }
//            .background(LinearGradient(
//                colors: [.init(red: 249/255, green: 246/255, blue: 231/255), .init(red: 249/255, green: 246/255, blue: 231/255)],
//                startPoint: .top, endPoint: .bottom))
    }
}

struct spring2020InterviewsView_Previews: PreviewProvider {
    static var previews: some View {
        spring2020InterviewsView()
    }
}
