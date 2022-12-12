//
//  fall2021InterviewsView.swift
//  EmpathyBytesApp
//
//  Created by Princess Empel on 12/3/22.
//

import SwiftUI
import UIKit

struct fall2021InterviewsView: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
       
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("EMPATHY BYTES")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("Fall 2021 Interviews")
                            .font(.system(size: 30, weight: .bold, design: .default))
                            .fontWeight(.black)
                    } //interview header
                    
                    Spacer()
                }
                .padding([.horizontal])
                //contains navigations to each interview, using cardview class that specifies the components of each card as image, date, title, and author
                ScrollView {
                    NavigationLink(destination: abiView()) {
                        cardView(image: "logoCircuitsTech", category: "Fall 2021", heading: "Abi Ivemeyer", author:"by Jocelyn Kavanagh")
                    }
                    NavigationLink(destination: joelView()) {
                        cardView(image: "logoCircuitsTech", category: "Fall 2021", heading: "Joel Jones", author:"by Jocelyn Kavanagh")
                    }
                    NavigationLink(destination: emaadView()) {
                        cardView(image: "logoCircuitsTech", category: "Fall 2021", heading: "Emaad Shamsi", author:"by Jocelyn Kavanagh")
                    }
                }
            }
//            .background(LinearGradient(
//                colors: [.init(red: 249/255, green: 246/255, blue: 231/255), .init(red: 249/255, green: 246/255, blue: 231/255)],
//                startPoint: .top, endPoint: .bottom))
    }
}

struct fall2021InterviewsView_Previews: PreviewProvider {
    static var previews: some View {
        fall2021InterviewsView()
    }
}
