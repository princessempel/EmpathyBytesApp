//
//  ModelDescriptionView.swift
//  EmpathyBytesApp
//
//  Created by Harsha Karanth on 11/8/21.
//

import SwiftUI

struct ARPage: View {
    
    var body: some View {
        VStack(spacing:20) {
            Text("AR Space")
                .font(.title)
                .fontWeight(.bold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Text("Makerspace")
                .font(.title2)
                .fontWeight(.bold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            HStack(spacing:20) {
                NavigationLink(destination: ARMenuView()) {
                    Text("Gallery")
                        .frame(width: 150, height: 50)
                        .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .medium, design: .default))
                        .cornerRadius(15)
                }
                NavigationLink(destination: ARGameMenu()) {
                    Text("Game")
                        .frame(width: 150, height: 50)
                        .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .medium, design: .default))
                        .cornerRadius(15)
                }
                
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
                        .frame(width: 150, height: 50)
                        .background(Color(red: 191 / 255, green: 191 / 255, blue: 191 / 255))
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .medium, design: .default))
                        .cornerRadius(15)
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
