//
//  ModelDescriptionView.swift
//  EmpathyBytesApp
//
//  Created by Harsha Karanth on 11/8/21.
//

import SwiftUI

struct ARPage: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing:20) {
            HStack {
                VStack(alignment: .leading) {
                    Text("EMPATHY BYTES")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("Augmented Reality")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .fontWeight(.black)
                } //interview header
                Spacer()
            }
            .padding([.horizontal])
            Text("Makerspace")
                .font(.title2)
                .fontWeight(.bold)
                .lineLimit(2)
                .padding(.horizontal)
                .multilineTextAlignment(.leading)
            NavigationLink(destination: ARMenuView()) {
                Text("Gallery")
                    .frame(width: UIScreen.main.bounds.width - 40.0, height:100)
                    .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .cornerRadius(15)
                    .padding(.horizontal)
            }
            NavigationLink(destination: ARGameMenu()) {
                Text("Games")
                    .frame(width: UIScreen.main.bounds.width - 40.0, height:100)
                    .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .cornerRadius(15)
                    .padding(.horizontal)
            }
            Text("The Covid College Experience")
                .font(.title2)
                .fontWeight(.bold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            HStack(spacing:20) {
                NavigationLink(destination: ARPage()) {
                    Text("Coming Soon !")
                        .frame(width: UIScreen.main.bounds.width - 40.0, height:100)
                        .background(Color(red: 191 / 255, green: 191 / 255, blue: 191 / 255))
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .medium, design: .default))
                        .cornerRadius(15)
                        .padding(.horizontal)
                }
                .disabled(true)
                
                
            }
            Spacer()
        }
    }
}

struct ARPage_Previews: PreviewProvider {
    static var previews: some View {
        ARPage()
    }
}
