//
//  ModelDescriptionView.swift
//  EmpathyBytesApp
//
//  Created by Harsha Karanth on 11/8/21.
//

import SwiftUI

struct ModelDescriptionView: View {
    var modelEntity: ModelEntity
    var body: some View {
        VStack(spacing:20) {
            Image(modelEntity.imageName)
                .resizable()
                .scaledToFit()
                .frame(height:200)
                .cornerRadius(12)
            Text(modelEntity.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Text(modelEntity.description)
                .font(.body)
                .padding()
            Spacer()
            NavigationLink(destination: ARModelView(modelTitle:modelEntity.$imageName )) {
                Text("See Model!")
                    .frame(width: 200, height: 50)
                    .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .cornerRadius(15)
            }
            
        }
    }
}

struct ModelDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ModelDescriptionView(modelEntity: ModelEntity(imageName: ImageConstants.toyAirplane,
                                                      title: ImageConstants.toyAirplaneTitle,
                                                      description: ImageConstants.toyAirplaneDescription))
    }
}
