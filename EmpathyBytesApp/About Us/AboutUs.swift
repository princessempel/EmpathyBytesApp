//
//  AboutUs.swift
//  HomeScreen
//
//  Created by Pranathi Singareddy on 11/3/20.
//

import SwiftUI

struct AboutUs: View {
    var body: some View {
        ZStack {
            Color(red: 249/255, green: 246/255, blue: 229/255)
                .ignoresSafeArea()
            VStack (alignment: .leading){
                Text("About Empathy Bytes")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .foregroundColor(Color(red: 181/255, green: 165/255, blue: 109/255))
                    .padding(.horizontal)
                Spacer()
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) {
                    Image("Full Teams Picture")
                        .resizable()
                        .frame(maxWidth: .infinity)
                        .scaledToFill()
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Empathy Bytes focuses on building an immersive digital archive of interviews, photographs, multimedia, and writings from diverse communities. Students explore the connections these communities have to Georgia Tech research and creative endeavors.  Students are given an opportunity to research communities, while documenting their experiences and designing innovative ways of sharing these stories with a broad audience. Archival collections are a tactile way to explore the lived experience of communities allowing the researcher and curator to find themselves in other people’s stories.")
                            .font(.system(size: 14, weight: .medium))
                            .padding(.top)
                            .padding(.horizontal)
                            .foregroundColor(Color(red: 0/255, green: 48/255, blue: 87/255))
                        Text("To provide greater access to the course products, the team will produce short form podcasts to showcase the project and collection, as well as the behind the scenes development process.  Students work together to complete the project defining their own roles depending on their area of interests and expertise.")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(Color(red: 0/255, green: 48/255, blue: 87/255))
                            .padding(.top)
                            .padding(.horizontal)
                        Text("Empathy Bytes allows the student to define their role in the project through track selection. Each track has a specific focus, but ties into the larger goals of the project. Certain aspects of the project everyone participates in, such as completing interviews and participating in basic research on communities.").font(.system(size: 14, weight: .medium))
                            .foregroundColor(Color(red: 0/255, green: 48/255, blue: 87/255))
                            .padding(.top)
                            .padding(.bottom)
                            .padding(.horizontal)
                        Spacer()
                        NavigationLink(destination: TeamMemberList()) {
                            Text("Meet the Team!")
                                .frame(width: 200, height: 50)
                                .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .medium, design: .default))
                                .cornerRadius(15)
                                .padding(.leading)
                        }
                    }
                    Spacer()
                        .frame(height: 100)
                }
            }
        }
    }
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs()
    }
}
