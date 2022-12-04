//
//  fall2020InterviewsView.swift
//  EmpathyBytesApp
//
//  Created by Princess Empel on 12/3/22.
//

import SwiftUI
import UIKit

struct fall2020InterviewsView: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
       
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("EMPATHY BYTES")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("Fall 2020 Interviews")
                            .font(.system(size: 30, weight: .bold, design: .default))
                            .fontWeight(.black)
                    } //interview header
                    
                    Spacer()
                }
                .padding([.horizontal])
                //contains navigations to each interview, using cardview class that specifies the components of each card as image, date, title, and author
                ScrollView {
                    NavigationLink(destination: daneWryeView()) {
                        cardView(image: "logoCircuitsTech", category: "Fall 2020", heading: "Dane Wrye on The Hive Community", author:"by Jocelyn Kavanagh")
                    }
                    NavigationLink(destination: amitJariwalaView()) {
                        cardView(image: "logoCircuitsTech", category: "Fall 2020", heading: "Dr. Amit Jariwala on the origins of the Invention Studio", author:"by Jocelyn Kavanagh")
                    }
                    NavigationLink(destination: alysonLamView()) {
                        cardView(image: "logoCircuitsTech", category: "Fall 2020", heading: "Alyson Lam on working at The Hive", author:"by Jocelyn Kavanagh")
                    }
                }
            }
    }
}

struct fall2020InterviewsView_Previews: PreviewProvider {
    static var previews: some View {
        fall2020InterviewsView()
    }
}
