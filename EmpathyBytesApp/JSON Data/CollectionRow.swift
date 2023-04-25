//
//  CollectionRow.swift
//  EmpathyBytesApp
//
//  Created by Princess Empel on 4/17/23.
//

import SwiftUI

struct CollectionRow: View {
    var collection: Collection
    
    var body: some View {
        HStack {
            collection.image
                .resizable()
                .frame(width: 75, height: 75)
                .padding()
            Text(collection.name)
                .font(.system(size: 22, weight: .medium))
                .foregroundColor(Color(red: 0/255, green: 48/255, blue: 87/255))
                .padding()
            Spacer()
        }
        /*
        HStack {
            collection.image
                .resizable()
                .frame(width: 50, height: 50)
            VStack (alignment: .leading){
                Text(collection.name)
                    .font(.headline)
                Text(collection.timeline)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
         */
    }
}

struct CollectionRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CollectionRow(collection: collections[0])
        }
        .previewLayout(.fixed(width: 500, height: 100))
    }
}
