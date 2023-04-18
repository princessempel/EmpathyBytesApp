//
//  CollectionDetailView.swift
//  EmpathyBytesApp
//
//  Created by Princess Empel on 4/17/23.
//

import SwiftUI
import CoreMedia

struct CollectionDetail: View {
    var collection: Collection
    
    var body: some View {
        ZStack {
            Color(red: 249/255, green: 246/255, blue: 229/255)
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Text(collection.name)
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(Color(red: 181/255, green: 165/255, blue: 109/255))
                        Spacer()
                        collection.image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 75)
                    }
                    Text(collection.timeline)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Divider()
                    Text(collection.description)
                        .font(.system(size: 14, weight: .medium))
                        .padding(.bottom)
                        .foregroundColor(Color(red: 0/255, green: 48/255, blue: 87/255))
                    /*
                    NavigationLink(destination: ArticleList()) {
                        Text("Interviews")
                            .frame(width: UIScreen.main.bounds.width - 40.0, height:100)
                            .background(Color(red: 0 / 255, green: 78 / 255, blue: 158 / 255))
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .medium, design: .default))
                            .cornerRadius(15)
                    }
                     */
                }
                .padding()
                Spacer()
            }
            .navigationTitle(collection.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CollectionDetail_Previews: PreviewProvider {
    static var previews: some View {
        CollectionDetail(collection: collections[0])
    }
}
