//
//  fall2019InterviewsView.swift
//  EmpathyBytesApp
//
//  Created by Princess Empel on 12/3/22.
//

import SwiftUI
import UIKit

struct fall2019InterviewsView: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
       
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("EMPATHY BYTES")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("Fall 2019 Interviews")
                            .font(.system(size: 30, weight: .bold, design: .default))
                            .fontWeight(.black)
                    } //interview header
                    
                    Spacer()
                }
                .padding([.horizontal])
                //contains navigations to each interview, using cardview class that specifies the components of each card as image, date, title, and author
                ScrollView {
                    NavigationLink(destination: marionView()) {
                        cardView(image: "distmath", category: "Fall 2019", heading: "Dr. Marion Usselman on the Distance Math Program", author:"by Jaewon Drake")
                    }
                }
            }
//            .background(LinearGradient(
//                colors: [.init(red: 249/255, green: 246/255, blue: 231/255), .init(red: 249/255, green: 246/255, blue: 231/255)],
//                startPoint: .top, endPoint: .bottom))
    }
}

struct fall2019InterviewsView_Previews: PreviewProvider {
    static var previews: some View {
        fall2019InterviewsView()
    }
}
